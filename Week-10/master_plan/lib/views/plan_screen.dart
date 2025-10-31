// lib/views/plan_screen.dart

import '../models/data_layer.dart';
import 'package:flutter/material.dart';
import '../provider/plan_provider.dart';

class PlanScreen extends StatefulWidget {
  Plan plan;

  PlanScreen({super.key, required this.plan});

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  late ScrollController scrollController;
  bool isControllerInitialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!isControllerInitialized) {
      scrollController = ScrollController()
        ..addListener(() {
          FocusScope.of(context).requestFocus(FocusNode());
        });
      isControllerInitialized = true;
    }
    // CATATAN: PADA TITIK INI WIDGET BELUM MENGAKSES PROVIDER
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  // Langkah 8: Modifikasi method build
  @override
  Widget build(BuildContext context) {
    final Plan plan = widget.plan;

    return Scaffold(
      appBar: AppBar(title: Text(plan.name)),
      body: Column(
        children: [
          Expanded(child: _buildList()),
          SafeArea(child: Text(plan.completenessMessage)),
        ],
      ),
      floatingActionButton: _buildAddTaskButton(context),
    );
  }

  // Langkah 5: Modifikasi _buildAddTaskButton
  Widget _buildAddTaskButton(BuildContext context) {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);

    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        Plan currentPlan = widget.plan;
        int planIndex = planNotifier.value.indexWhere(
          (p) => p.name == currentPlan.name,
        );
        List<Task> updatedTasks = List<Task>.from(currentPlan.tasks)
          ..add(const Task());

        // Update List global
        planNotifier.value = List<Plan>.from(planNotifier.value)
          ..[planIndex] = Plan(name: currentPlan.name, tasks: updatedTasks);

        // Update state local
        setState(() {
          widget.plan = Plan(name: currentPlan.name, tasks: updatedTasks);
        });
      },
    );
  }

  // Langkah 6: Modifikasi _buildList
  Widget _buildList() {
    return ListView.builder(
      controller: scrollController,
      keyboardDismissBehavior: Theme.of(context).platform == TargetPlatform.iOS
          ? ScrollViewKeyboardDismissBehavior.onDrag
          : ScrollViewKeyboardDismissBehavior.manual,
      itemCount: widget.plan.tasks.length,
      itemBuilder: (context, index) =>
          _buildTaskTile(widget.plan.tasks[index], index, context),
    );
  }

  Widget _buildTaskTile(Task task, int index, BuildContext context) {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);
    Plan currentPlan = widget.plan;
    int planIndex = planNotifier.value.indexWhere(
      (p) => p.name == currentPlan.name,
    );

    return ListTile(
      leading: Checkbox(
        value: task.complete,
        onChanged: (selected) {
          List<Task> newTasks = List<Task>.from(currentPlan.tasks)
            ..[index] = Task(
              description: task.description,
              complete: selected ?? false,
            );

          planNotifier.value = List<Plan>.from(planNotifier.value)
            ..[planIndex] = Plan(name: currentPlan.name, tasks: newTasks);

          setState(() {
            widget.plan = Plan(name: currentPlan.name, tasks: newTasks);
          });
        },
      ),
      title: TextFormField(
        decoration: const InputDecoration(border: UnderlineInputBorder()),
        initialValue: task.description,
        onChanged: (text) {
          List<Task> newTasks = List<Task>.from(currentPlan.tasks)
            ..[index] = Task(description: text, complete: task.complete);

          planNotifier.value = List<Plan>.from(planNotifier.value)
            ..[planIndex] = Plan(name: currentPlan.name, tasks: newTasks);

          setState(() {
            widget.plan = Plan(name: currentPlan.name, tasks: newTasks);
          });
        },
      ),
    );
  }
}

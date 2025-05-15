part of 'index.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});

  // 主视图
  Widget _buildView() {
    return const Center(child: Text("SettingsPage"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: SafeArea(child: _buildView()),
    );
  }
}

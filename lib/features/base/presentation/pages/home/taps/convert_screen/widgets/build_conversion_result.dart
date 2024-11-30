part of 'convert_screen_widgets_imports.dart';

class BuildConversionResult extends StatelessWidget {
  const BuildConversionResult({super.key, required this.controller});
  final ConvertScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.green.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Conversion Result',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.green.shade800,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            '${''} ${controller.amountController.text} ',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Colors.green.shade900,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

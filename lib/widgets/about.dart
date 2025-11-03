import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AboutMe extends StatelessWidget {
  final String applicationName;
  final String version;
  final String? legalese;
  final String description;
  final List<Widget>? additionalContent;
  final Widget? logo;
  final Color? backgroundColor;
  final Color? textColor;

  const CustomAbout({
    Key? key,
    required this.applicationName,
    required this.version,
    required this.description,
    this.legalese,
    this.additionalContent,
    this.logo,
    this.backgroundColor,
    this.textColor,
  }) : super(key: key);

  void showCustomAbout(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: backgroundColor ?? Theme.of(context).dialogBackgroundColor,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (logo != null) ...[
                    logo!,
                    const SizedBox(height: 24),
                  ],
                  Text(
                    applicationName,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: textColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Version: $version',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: textColor,
                    ),
                  ),
                  if (legalese != null) ...[
                    const SizedBox(height: 8),
                    Text(
                      legalese!,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: textColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                  const SizedBox(height: 24),
                  if (additionalContent != null) ...additionalContent!,
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Close'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
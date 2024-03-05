// Bonus!
// Create a dart program that download multiple files concurrently, displaying progress updates, and handling potential errors.

import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  final response = await http.get(Uri.parse(url));
  final contentLength = response.contentLength;
  var downloadedBytes = 0;

  final file = File(savePath);
  final sink = file.openWrite();

  response.stream.listen((List<int> chunk) {
    sink.add(chunk);
    downloadedBytes += chunk.length;
    print('Downloaded: ${downloadedBytes ~/ 1024} KB / ${contentLength ~/ 1024} KB');
  }, onDone: () {
    sink.close();
    print('File downloaded to: $savePath');
  }, onError: (error) {
    print('Error occurred during download: $error');
    file.delete(); // Delete the file if an error occurs
  });
}

void main() async {
  final List<String> urls = [
    'https://examples.com/file1.txt',
    'https://examples.com/file2.txt',
    'https://examples.com/file3.txt',
  ];

  final List<String> savePaths = [
    'file1.txt',
    'file2.txt',
    'file3.txt',
  ];

  final List<Future<void>> downloadFutures = [];

  for (int i = 0; i < urls.length; i++) {
    final url = urls[i];
    final savePath = savePaths[i];
    downloadFutures.add(downloadFile(url, savePath));
  }

  try {
    await Future.wait(downloadFutures);
    print('All files downloaded successfully.');
  } catch (e) {
    print('Error occurred during file download: $e');
  }
}


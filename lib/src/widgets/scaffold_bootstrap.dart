import 'package:bancamovilr/index.dart';

class ScaffoldBootstrap extends ConsumerStatefulWidget {
  const ScaffoldBootstrap(
      {super.key,
      required this.body,
      this.appBar,
      this.floatingActionButton,
      this.drawer,
      this.bottomNavigationBar,
      this.floatingActionButtonLocation,
      this.backgroundColor});

  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget? drawer;
  final Widget? bottomNavigationBar;
  final Color? backgroundColor;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ScaffoldBootstrapState();
}

class _ScaffoldBootstrapState extends ConsumerState<ScaffoldBootstrap> {
  @override
  Widget build(BuildContext context) {
    var bootstrap = ref.watch(bootstrapProvider);

    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: widget.appBar,
          floatingActionButton: widget.floatingActionButton,
          drawer: widget.drawer,
          bottomNavigationBar: widget.bottomNavigationBar,
          body: widget.body,
          backgroundColor: widget.backgroundColor,
          floatingActionButtonLocation: widget.floatingActionButtonLocation,
        ),
        bootstrap.isLoading
            ? Container(
                width: double.infinity,
                height: double.infinity,
                color:
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.80),
                child: const Center(
                  child: Loading(),
                ),
              )
            : Container()
      ],
    );
  }
}

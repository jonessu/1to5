import 'package:digitatravelmoney/screen/bloc_post_api_screen/bloc/post_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class blocpostapiScreen extends StatefulWidget {
  blocpostapiScreen({Key? key}) : super(key: key);

  @override
  _blocpostapiScreenState createState() => _blocpostapiScreenState();
}

class _blocpostapiScreenState extends State<blocpostapiScreen> {
  late PostBloc bloc;
  @override
  void initState() {
    bloc = BlocProvider.of<PostBloc>(context);
    bloc.add(DoFetchEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("Api Bloc Demo"),
      ),
      body: Center(
        child: BlocBuilder<PostBloc, PostState>(
          builder: (context, state) {
            if (state is InitialState) {
              return CircularProgressIndicator();
            } else if (state is LoadingState) {
              return CircularProgressIndicator();
            } else if (state is FetchSuccess) {
              return ListView.builder(
                itemCount: state.posts.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      elevation: 1.0,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                state.posts[i].title,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(state.posts[i].body,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            } else if (state is ErrorState) {
              return ErrorWidget(state.message.toString());
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

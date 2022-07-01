import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/image_learn_202.dart';
import 'package:flutter_full_learn/303/reqrest_resource/model/resource_model.dart';
import 'package:flutter_full_learn/303/reqrest_resource/service/reqres_service.dart';
import 'package:flutter_full_learn/303/reqrest_resource/view_model/req_res_provider.dart';
import 'package:flutter_full_learn/product/extension/string_extension.dart';
import 'package:flutter_full_learn/product/global/resource_contex.dart';
import 'package:flutter_full_learn/product/global/theme_notifer.dart';
import 'package:provider/provider.dart';

import '../../../product/service/project_dio.dart';
import '../view_model/req_res_view_model.dart';

class ReqresView extends StatefulWidget {
  const ReqresView({Key? key}) : super(key: key);

  @override
  State<ReqresView> createState() => _ReqresViewState();
}

//class _ReqresViewState extends ReqresViewModel {
class _ReqresViewState extends State<ReqresView> with ProjectMixin {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ReqresProvider>(
      create: (context) => ReqresProvider(
          ReqresService(service)), //provider ı burda olusturursun
      builder: (context, child) {
        // calısması gereken sayfa
        return Scaffold(
          floatingActionButton: FloatingActionButton(onPressed: () {
            context.read<ThemeNotifer>().changeTheme();
          }),
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    context
                        .read<ReqresProvider>()
                        .saveToLocal(context.read<ResourceContext>());
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => ImageLearn202(),
                    ));
                  },
                  icon: Icon(Icons.save))
            ],
            title: context.watch<ReqresProvider>().isLoading
                ? const CircularProgressIndicator(
                    color: Colors.white,
                  )
                : const SizedBox.shrink(),
          ),
          body: Column(
            children: [
              // selector gider widgettan etkilenen durumlarda gereklı oluyor
              Selector<ReqresProvider, bool>(builder: (context, value, child) {
                // ekrana cizilicek kısım
                return value ? Placeholder() : Text('data');
              }, selector: (context, provider) {
                return provider
                    .isLoading; // buranın dondusu builderdaki value kısmına eşit
              }),
              Expanded(
                child: _resourceListView(
                    context, context.watch<ReqresProvider>().resources),
              ),
            ],
          ),
        );
      },
    );
    // Scaffold(
    //   // appBar: AppBar(
    //   //   title: isLoading ? const  CircularProgressIndicator() : const SizedBox.shrink(),
    //   // ),
    //   // body: ListView.builder(
    //   //     itemCount: resources?.length ?? 0,
    //   //     itemBuilder: (context, index) {
    //   //       return Card(color: Color(resources?[index].color?.colorValue ?? 0),//Color(resources?[index].colorValue ?? 0),
    //   //         child: ListTile(title: Text(resources?[index].name ?? ''),),
    //   //       );
    //   //     }),
    // );
  }

  ListView _resourceListView(BuildContext context, List<Data>? items) {
    return ListView.builder(
        itemCount: items?.length ?? 0,
        itemBuilder: (context, index) {
          return Card(
            color: Color(items?[index].color?.colorValue ??
                0), //Color(resources?[index].colorValue ?? 0),
            child: ListTile(
              title: Text(items?[index].name ?? ''),
            ),
          );
        });
  }
}

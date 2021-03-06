import 'package:flutter/widgets.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:flutter_map_fast_markers/flutter_map_fast_markers.dart';

import 'fast_markers_layer.dart';

class FastMarkersPlugin extends MapPlugin {
  @override
  Widget createLayer(
      LayerOptions options, MapState mapState, Stream<Null> stream) {
    return FastMarkersLayer(options as FastMarkersLayerOptions, mapState, stream);
  }

  @override
  bool supportsLayer(LayerOptions options) {
    return options is FastMarkersLayerOptions;
  }
}

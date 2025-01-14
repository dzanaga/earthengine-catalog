local id = 'NASA/GLDAS';
local ee_const = import 'earthengine_const.libsonnet';
local ee = import 'earthengine.libsonnet';

local basename = 'catalog';
local base_filename = basename + '.json';
local base_url = ee_const.catalog_base + 'NASA/GLDAS/';
local parent_url = ee_const.catalog_base + 'NASA/catalog.json';
local self_url = base_url + base_filename;

{
  stac_version: ee_const.stac_version,
  type: ee_const.stac_type.catalog,
  id: id,
  title: 'GLDAS',
  description: importstr 'description.md',
  links: [
    ee.link.root(),
    ee.link.parent(parent_url),
    ee.link.self_link(self_url),
    ee.link.child_collection('NASA_GLDAS_V021_NOAH_G025_T3H', base_url),
    ee.link.child_collection('NASA_GLDAS_V022_CLSM_G025_DA1D', base_url),
    ee.link.child_collection('NASA_GLDAS_V20_NOAH_G025_T3H', base_url),
  ],
}

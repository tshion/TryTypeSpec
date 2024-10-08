import "@typespec/json-schema";
import "../types/latitude.tsp";
import "../types/longitude.tsp";

using TypeSpec.JsonSchema;

@jsonSchema
namespace Schemas;

/**
 * 数値関連の定義のサンプル
 */
model NumberSample {
    /** 空を飛べるか？ */
    canFly: boolean = false;

    /** サイコロの目 */
    dice: 1 | 2 | 3 | 4 | 5 | 6 = 3;

    /** サイコロの目の一覧 */
    dices: (1 | 2 | 3 | 4 | 5 | 6)[] = #[3, 3];

    /** ステータスコード */
    @minValue(0)
    @maxValue(599)
    httpStatusCode: int32 = 200;

    /** ステータスコードの一覧 */
    httpStatusCodeList: int32[] = #[200, 300];

    /** 消費税率 */
    tax: float64 = 0.10;

    /** 消費税率の一覧 */
    taxList: float64[] = #[
        0.03,
        0.05,
        0.08,
        0.10,
        0.12,
        0.15,
        0.20,
        0.25,
        0.45
    ];

    /** 緯度 */
    lat: latitude = 35.658099;

    /** 経度 */
    lon: longitude = 139.741357;
}

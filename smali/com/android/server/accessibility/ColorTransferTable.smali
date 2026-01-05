.class public final Lcom/android/server/accessibility/ColorTransferTable;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final Deutan_severity:[D

.field public static final Deutan_userParameter:[D

.field public static final Protan_severity:[D

.field public static final Protan_userParameter:[D

.field public static final Tritan_severity:[D

.field public static final Tritan_userParameter:[D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x19

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Protan_severity:[D

    new-array v1, v0, [D

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Protan_userParameter:[D

    new-array v1, v0, [D

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_severity:[D

    new-array v1, v0, [D

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_userParameter:[D

    new-array v1, v0, [D

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_severity:[D

    new-array v0, v0, [D

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_userParameter:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_4
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fc999999999999aL    # 0.2
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x0
        0x3fd3333333333333L    # 0.3
        0x3fe0000000000000L    # 0.5
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3ff0000000000000L    # 1.0
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3ff0000000000000L    # 1.0
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public static getColorTransferValue_DMC(IIIDD)I
    .locals 24

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x7

    const/4 v4, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x5

    const/16 v8, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-ne v0, v12, :cond_c

    if-ne v1, v12, :cond_3

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez v2, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    move v5, v9

    goto :goto_2

    :pswitch_0
    const/16 v5, 0xfe

    const/16 v8, 0xfe

    goto :goto_3

    :pswitch_1
    move v5, v8

    goto :goto_3

    :cond_0
    if-ne v2, v12, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    const/16 v5, 0xfe

    goto :goto_3

    :cond_1
    if-ne v2, v10, :cond_2

    packed-switch v0, :pswitch_data_2

    move v0, v9

    move v8, v0

    goto :goto_1

    :pswitch_3
    move v0, v8

    :goto_1
    move v5, v8

    move v8, v0

    goto :goto_3

    :cond_2
    move v5, v11

    :goto_2
    move v8, v5

    :goto_3
    filled-new-array {v8, v5}, [I

    move-result-object v0

    goto/16 :goto_4e

    :cond_3
    if-ne v1, v6, :cond_8

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez v2, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_4

    move v0, v9

    goto :goto_4

    :cond_4
    move v0, v12

    :goto_4
    move v1, v9

    goto :goto_7

    :cond_5
    if-ne v2, v12, :cond_6

    packed-switch v0, :pswitch_data_3

    goto :goto_5

    :pswitch_4
    move v0, v12

    goto :goto_6

    :cond_6
    if-ne v2, v10, :cond_7

    :goto_5
    move v0, v9

    :goto_6
    move v1, v0

    goto :goto_7

    :cond_7
    move v0, v11

    goto :goto_6

    :goto_7
    filled-new-array {v0, v1}, [I

    move-result-object v0

    goto/16 :goto_4e

    :cond_8
    if-ne v1, v7, :cond_4f

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    const/16 v1, 0x24

    const/16 v3, 0x42

    const/16 v4, 0x5c

    const/16 v5, 0x75

    const/16 v6, 0x88

    const/16 v7, 0x9c

    const/16 v8, 0xac

    const/16 v13, 0xbc

    const/16 v14, 0xca

    const/16 v15, 0xd8

    if-nez v2, :cond_9

    packed-switch v0, :pswitch_data_4

    :goto_8
    move v1, v9

    goto :goto_9

    :pswitch_5
    move v1, v15

    goto :goto_9

    :pswitch_6
    move v1, v14

    goto :goto_9

    :pswitch_7
    move v1, v13

    goto :goto_9

    :pswitch_8
    move v1, v8

    goto :goto_9

    :pswitch_9
    move v1, v7

    goto :goto_9

    :pswitch_a
    move v1, v6

    goto :goto_9

    :pswitch_b
    move v1, v5

    goto :goto_9

    :pswitch_c
    move v1, v4

    goto :goto_9

    :pswitch_d
    move v1, v3

    :goto_9
    :pswitch_e
    move v0, v9

    goto :goto_b

    :cond_9
    if-ne v2, v12, :cond_a

    packed-switch v0, :pswitch_data_5

    goto :goto_8

    :cond_a
    if-ne v2, v10, :cond_b

    move v0, v9

    :goto_a
    move v1, v0

    goto :goto_b

    :cond_b
    move v0, v11

    goto :goto_a

    :goto_b
    filled-new-array {v1, v0}, [I

    move-result-object v0

    goto/16 :goto_4e

    :cond_c
    const/16 v13, 0xcc

    if-ne v0, v10, :cond_18

    if-ne v1, v12, :cond_10

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez v2, :cond_d

    packed-switch v0, :pswitch_data_6

    move v5, v9

    goto :goto_e

    :pswitch_f
    const/16 v5, 0xfe

    const/16 v8, 0xfe

    goto :goto_f

    :pswitch_10
    move v5, v8

    goto :goto_f

    :cond_d
    if-ne v2, v12, :cond_e

    packed-switch v0, :pswitch_data_7

    :goto_c
    move v0, v9

    move v8, v0

    goto :goto_d

    :pswitch_11
    move v0, v8

    :goto_d
    move v5, v8

    move v8, v0

    goto :goto_f

    :cond_e
    if-ne v2, v10, :cond_f

    packed-switch v0, :pswitch_data_8

    goto :goto_c

    :cond_f
    move v5, v11

    :goto_e
    move v8, v5

    :goto_f
    filled-new-array {v8, v5}, [I

    move-result-object v0

    goto/16 :goto_4e

    :cond_10
    if-ne v1, v6, :cond_14

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez v2, :cond_11

    packed-switch v0, :pswitch_data_9

    :goto_10
    move v0, v9

    goto :goto_12

    :pswitch_12
    move v0, v8

    goto :goto_13

    :pswitch_13
    const/16 v8, 0xcf

    move v0, v8

    move v8, v13

    goto :goto_13

    :cond_11
    if-ne v2, v12, :cond_12

    packed-switch v0, :pswitch_data_a

    move v5, v9

    move v8, v5

    goto :goto_11

    :pswitch_14
    const/16 v5, 0xfe

    const/16 v8, 0xfe

    goto :goto_11

    :pswitch_15
    move v5, v8

    :goto_11
    move v0, v8

    move v8, v5

    goto :goto_13

    :cond_12
    if-ne v2, v10, :cond_13

    packed-switch v0, :pswitch_data_b

    goto :goto_10

    :cond_13
    move v0, v11

    :goto_12
    move v8, v0

    :goto_13
    filled-new-array {v0, v8}, [I

    move-result-object v0

    goto/16 :goto_4e

    :cond_14
    if-ne v1, v7, :cond_4f

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    if-nez v2, :cond_15

    :goto_14
    move v0, v9

    :goto_15
    move v1, v0

    goto :goto_16

    :cond_15
    if-ne v2, v12, :cond_16

    goto :goto_14

    :cond_16
    if-ne v2, v10, :cond_17

    goto :goto_14

    :cond_17
    move v0, v11

    goto :goto_15

    :goto_16
    filled-new-array {v0, v1}, [I

    move-result-object v0

    goto/16 :goto_4e

    :cond_18
    const/16 v14, 0x2f

    const/16 v15, 0x15

    const/16 v16, 0x33

    if-ne v0, v6, :cond_25

    const/16 v0, 0x3f

    const/16 v4, 0x49

    if-ne v1, v12, :cond_1d

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v1

    if-nez v2, :cond_1a

    packed-switch v1, :pswitch_data_c

    :goto_17
    move v0, v9

    goto :goto_1b

    :cond_19
    :pswitch_16
    move v0, v12

    goto :goto_1b

    :cond_1a
    if-ne v2, v12, :cond_1b

    if-eq v1, v12, :cond_19

    if-eq v1, v3, :cond_19

    goto :goto_17

    :cond_1b
    if-ne v2, v10, :cond_1c

    packed-switch v1, :pswitch_data_d

    move v0, v9

    :goto_18
    :pswitch_17
    move v15, v0

    goto :goto_1a

    :pswitch_18
    const/16 v15, 0x51

    :goto_19
    :pswitch_19
    move v0, v15

    goto :goto_1a

    :pswitch_1a
    move v0, v4

    goto :goto_18

    :pswitch_1b
    move/from16 v0, v16

    goto :goto_18

    :pswitch_1c
    const/16 v15, 0x26

    goto :goto_19

    :goto_1a
    move v1, v0

    move v0, v15

    goto :goto_1c

    :cond_1c
    move v0, v11

    :goto_1b
    move v1, v0

    :goto_1c
    filled-new-array {v1, v0}, [I

    move-result-object v0

    goto/16 :goto_4e

    :cond_1d
    if-ne v1, v6, :cond_21

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez v2, :cond_1e

    packed-switch v0, :pswitch_data_e

    :goto_1d
    move v5, v9

    goto :goto_1f

    :pswitch_1d
    move v5, v8

    goto :goto_20

    :pswitch_1e
    const/16 v5, 0xfe

    const/16 v8, 0xfe

    goto :goto_20

    :cond_1e
    if-ne v2, v12, :cond_1f

    packed-switch v0, :pswitch_data_f

    goto :goto_1d

    :cond_1f
    if-ne v2, v10, :cond_20

    packed-switch v0, :pswitch_data_10

    move v0, v9

    move v8, v0

    goto :goto_1e

    :pswitch_1f
    move v0, v8

    :goto_1e
    move v5, v8

    move v8, v0

    goto :goto_20

    :cond_20
    move v5, v11

    :goto_1f
    move v8, v5

    :goto_20
    filled-new-array {v8, v5}, [I

    move-result-object v0

    goto/16 :goto_4e

    :cond_21
    if-ne v1, v7, :cond_4f

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v1

    const/16 v3, 0x13

    const/16 v5, 0x55

    if-nez v2, :cond_22

    packed-switch v1, :pswitch_data_11

    move v0, v9

    :goto_21
    :pswitch_20
    move/from16 v16, v0

    goto :goto_23

    :pswitch_21
    const/16 v16, 0x73

    :goto_22
    :pswitch_22
    move/from16 v0, v16

    goto :goto_23

    :pswitch_23
    const/16 v16, 0x6d

    goto :goto_22

    :pswitch_24
    const/16 v16, 0x67

    goto :goto_22

    :pswitch_25
    const/16 v16, 0x5d

    goto :goto_22

    :pswitch_26
    move v0, v5

    goto :goto_21

    :pswitch_27
    const/16 v16, 0x4b

    goto :goto_22

    :pswitch_28
    const/16 v16, 0x25

    goto :goto_22

    :pswitch_29
    move v0, v3

    goto :goto_21

    :goto_23
    move/from16 v14, v16

    goto :goto_28

    :cond_22
    if-ne v2, v12, :cond_23

    packed-switch v1, :pswitch_data_12

    move v3, v9

    :goto_24
    :pswitch_2a
    move v14, v3

    goto :goto_26

    :pswitch_2b
    const/16 v14, 0x5e

    :goto_25
    :pswitch_2c
    move v3, v14

    goto :goto_26

    :pswitch_2d
    const/16 v14, 0x59

    goto :goto_25

    :pswitch_2e
    move v3, v5

    goto :goto_24

    :pswitch_2f
    const/16 v14, 0x4f

    goto :goto_25

    :pswitch_30
    move v3, v4

    goto :goto_24

    :pswitch_31
    const/16 v14, 0x41

    goto :goto_25

    :pswitch_32
    const/16 v14, 0x39

    goto :goto_25

    :pswitch_33
    const/16 v14, 0x23

    goto :goto_25

    :goto_26
    move v0, v3

    goto :goto_28

    :cond_23
    if-ne v2, v10, :cond_24

    move v0, v9

    :goto_27
    move v14, v0

    goto :goto_28

    :cond_24
    move v0, v11

    goto :goto_27

    :goto_28
    filled-new-array {v0, v14}, [I

    move-result-object v0

    goto/16 :goto_4e

    :cond_25
    if-ne v0, v4, :cond_31

    if-ne v1, v12, :cond_29

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez v2, :cond_26

    packed-switch v0, :pswitch_data_13

    goto :goto_29

    :pswitch_34
    move v0, v12

    goto :goto_2a

    :cond_26
    if-ne v2, v12, :cond_27

    :goto_29
    move v0, v9

    :goto_2a
    move v1, v0

    goto :goto_2b

    :cond_27
    if-ne v2, v10, :cond_28

    goto :goto_29

    :cond_28
    move v0, v11

    goto :goto_2a

    :goto_2b
    filled-new-array {v1, v0}, [I

    move-result-object v0

    goto/16 :goto_4e

    :cond_29
    if-ne v1, v6, :cond_2d

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez v2, :cond_2a

    packed-switch v0, :pswitch_data_14

    :goto_2c
    move v0, v9

    goto :goto_2e

    :pswitch_35
    move v0, v8

    goto :goto_2f

    :cond_2a
    if-ne v2, v12, :cond_2b

    packed-switch v0, :pswitch_data_15

    move v5, v9

    move v8, v5

    goto :goto_2d

    :pswitch_36
    const/16 v5, 0xfe

    const/16 v8, 0xfe

    goto :goto_2d

    :pswitch_37
    move v5, v8

    :goto_2d
    move v0, v8

    move v8, v5

    goto :goto_2f

    :cond_2b
    if-ne v2, v10, :cond_2c

    packed-switch v0, :pswitch_data_16

    goto :goto_2c

    :cond_2c
    move v0, v11

    :goto_2e
    move v8, v0

    :goto_2f
    filled-new-array {v0, v8}, [I

    move-result-object v0

    goto/16 :goto_4e

    :cond_2d
    if-ne v1, v7, :cond_4f

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez v2, :cond_2e

    packed-switch v0, :pswitch_data_17

    :goto_30
    move v0, v9

    goto :goto_31

    :pswitch_38
    move v0, v8

    goto :goto_32

    :cond_2e
    if-ne v2, v12, :cond_2f

    packed-switch v0, :pswitch_data_18

    goto :goto_30

    :cond_2f
    if-ne v2, v10, :cond_30

    packed-switch v0, :pswitch_data_19

    goto :goto_30

    :cond_30
    move v0, v11

    :goto_31
    move v8, v0

    :goto_32
    filled-new-array {v0, v8}, [I

    move-result-object v0

    goto/16 :goto_4e

    :cond_31
    const/4 v5, 0x6

    if-ne v0, v7, :cond_3d

    const/16 v0, 0xc

    const/16 v3, 0x10

    const/16 v4, 0x1a

    const/16 v13, 0x29

    const/16 v18, 0x20

    if-ne v1, v12, :cond_35

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v1

    if-nez v2, :cond_32

    packed-switch v1, :pswitch_data_1a

    goto :goto_33

    :pswitch_39
    move v0, v12

    goto :goto_34

    :cond_32
    if-ne v2, v12, :cond_33

    :goto_33
    move v0, v9

    :goto_34
    move v1, v0

    goto :goto_37

    :cond_33
    if-ne v2, v10, :cond_34

    packed-switch v1, :pswitch_data_1b

    move v14, v9

    move v15, v14

    goto :goto_36

    :pswitch_3a
    const/16 v15, 0x76

    goto :goto_36

    :pswitch_3b
    const/16 v15, 0x66

    move v14, v13

    goto :goto_36

    :pswitch_3c
    const/16 v15, 0x53

    move/from16 v14, v18

    goto :goto_36

    :pswitch_3d
    move v14, v9

    move v15, v13

    goto :goto_36

    :pswitch_3e
    move v14, v9

    move/from16 v15, v18

    goto :goto_36

    :pswitch_3f
    move v15, v4

    :goto_35
    :pswitch_40
    move v14, v9

    goto :goto_36

    :pswitch_41
    move v15, v3

    goto :goto_35

    :pswitch_42
    move v15, v0

    goto :goto_35

    :pswitch_43
    move v15, v5

    goto :goto_35

    :goto_36
    move v0, v14

    move v1, v15

    goto :goto_37

    :cond_34
    move v0, v11

    goto :goto_34

    :goto_37
    filled-new-array {v1, v0}, [I

    move-result-object v0

    goto/16 :goto_4e

    :cond_35
    if-ne v1, v6, :cond_39

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v1

    if-nez v2, :cond_36

    :goto_38
    move v0, v9

    :goto_39
    move v1, v0

    goto :goto_3b

    :cond_36
    if-ne v2, v12, :cond_37

    packed-switch v1, :pswitch_data_1c

    goto :goto_38

    :pswitch_44
    move v0, v12

    goto :goto_39

    :cond_37
    if-ne v2, v10, :cond_38

    packed-switch v1, :pswitch_data_1d

    move v15, v9

    goto :goto_3a

    :pswitch_45
    const/16 v15, 0x47

    goto :goto_3a

    :pswitch_46
    const/16 v15, 0x3d

    goto :goto_3a

    :pswitch_47
    move/from16 v15, v16

    goto :goto_3a

    :pswitch_48
    move v15, v13

    goto :goto_3a

    :pswitch_49
    move/from16 v15, v18

    goto :goto_3a

    :pswitch_4a
    move v15, v4

    goto :goto_3a

    :pswitch_4b
    move v15, v3

    goto :goto_3a

    :pswitch_4c
    move v15, v0

    goto :goto_3a

    :pswitch_4d
    move v15, v5

    :goto_3a
    :pswitch_4e
    move v0, v9

    move v1, v15

    goto :goto_3b

    :cond_38
    move v0, v11

    goto :goto_39

    :goto_3b
    filled-new-array {v1, v0}, [I

    move-result-object v0

    goto/16 :goto_4e

    :cond_39
    if-ne v1, v7, :cond_4f

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez v2, :cond_3a

    packed-switch v0, :pswitch_data_1e

    move v5, v9

    :goto_3c
    move/from16 v17, v5

    goto :goto_3d

    :pswitch_4f
    const/16 v5, 0xfe

    const/16 v17, 0xfe

    goto :goto_3d

    :pswitch_50
    move v5, v8

    goto :goto_3c

    :goto_3d
    move/from16 v0, v17

    goto :goto_3f

    :cond_3a
    if-ne v2, v12, :cond_3b

    packed-switch v0, :pswitch_data_1f

    move v5, v9

    goto :goto_3c

    :pswitch_51
    move v5, v8

    goto :goto_3c

    :cond_3b
    if-ne v2, v10, :cond_3c

    packed-switch v0, :pswitch_data_20

    move v0, v9

    move v8, v0

    goto :goto_3e

    :pswitch_52
    move v0, v8

    :goto_3e
    move v5, v8

    goto :goto_3f

    :cond_3c
    move v0, v11

    move v5, v0

    :goto_3f
    filled-new-array {v0, v5}, [I

    move-result-object v0

    goto/16 :goto_4e

    :cond_3d
    if-ne v0, v5, :cond_50

    const/16 v0, 0xf0

    if-ne v1, v12, :cond_41

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v1

    if-nez v2, :cond_3e

    packed-switch v1, :pswitch_data_21

    move v5, v9

    :goto_40
    move/from16 v17, v5

    goto :goto_41

    :pswitch_53
    const/16 v5, 0xfe

    const/16 v17, 0xfe

    goto :goto_41

    :pswitch_54
    move v5, v8

    goto :goto_40

    :goto_41
    move/from16 v13, v17

    goto :goto_45

    :cond_3e
    if-ne v2, v12, :cond_3f

    packed-switch v1, :pswitch_data_22

    move v5, v9

    move v8, v5

    goto :goto_42

    :pswitch_55
    move v5, v8

    goto :goto_42

    :pswitch_56
    const/16 v5, 0xfe

    :goto_42
    move v13, v5

    :goto_43
    move v5, v8

    goto :goto_45

    :cond_3f
    if-ne v2, v10, :cond_40

    packed-switch v1, :pswitch_data_23

    move v8, v9

    :goto_44
    :pswitch_57
    move v13, v8

    goto :goto_43

    :pswitch_58
    const/16 v8, 0xb6

    goto :goto_44

    :pswitch_59
    move v8, v13

    goto :goto_43

    :pswitch_5a
    const/16 v8, 0xdf

    goto :goto_44

    :pswitch_5b
    move v8, v0

    goto :goto_44

    :cond_40
    move v5, v11

    move v13, v5

    :goto_45
    filled-new-array {v13, v5}, [I

    move-result-object v0

    goto/16 :goto_4e

    :cond_41
    if-ne v1, v6, :cond_4b

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez v2, :cond_43

    if-eq v0, v3, :cond_42

    const/16 v1, 0x8

    if-eq v0, v1, :cond_42

    move v0, v9

    goto :goto_46

    :cond_42
    move v0, v12

    :goto_46
    move v1, v9

    goto :goto_49

    :cond_43
    if-ne v2, v12, :cond_44

    packed-switch v0, :pswitch_data_24

    move v0, v9

    goto :goto_48

    :pswitch_5c
    move v0, v12

    goto :goto_48

    :cond_44
    if-ne v2, v10, :cond_4a

    if-eq v0, v12, :cond_48

    if-eq v0, v10, :cond_47

    if-eq v0, v6, :cond_46

    if-eq v0, v4, :cond_45

    if-eq v0, v7, :cond_49

    move v4, v9

    goto :goto_47

    :cond_45
    const/16 v4, 0xa

    goto :goto_47

    :cond_46
    const/16 v4, 0xd

    goto :goto_47

    :cond_47
    const/16 v4, 0xb

    goto :goto_47

    :cond_48
    move v4, v7

    :cond_49
    :goto_47
    move v1, v4

    move v0, v9

    goto :goto_49

    :cond_4a
    move v0, v11

    :goto_48
    move v1, v0

    :goto_49
    filled-new-array {v1, v0}, [I

    move-result-object v0

    goto/16 :goto_4e

    :cond_4b
    if-ne v1, v7, :cond_4f

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v1

    const/16 v3, 0xee

    const/16 v4, 0xda

    const/16 v5, 0xe2

    const/16 v6, 0xbe

    const/16 v7, 0xb3

    const/16 v14, 0xa9

    const/16 v15, 0xa1

    const/16 v16, 0xf6

    const/16 v17, 0x98

    const/16 v18, 0xfa

    const/16 v19, 0x90

    const/16 v20, 0xfc

    const/16 v21, 0x8a

    const/16 v22, 0xea

    const/16 v23, 0xe4

    if-nez v2, :cond_4c

    packed-switch v1, :pswitch_data_25

    move v8, v9

    :goto_4a
    :pswitch_5d
    move/from16 v23, v8

    goto :goto_4b

    :pswitch_5e
    move/from16 v23, v20

    move/from16 v8, v21

    goto :goto_4b

    :pswitch_5f
    move/from16 v23, v18

    move/from16 v8, v19

    goto :goto_4b

    :pswitch_60
    move/from16 v23, v16

    move/from16 v8, v17

    goto :goto_4b

    :pswitch_61
    move/from16 v23, v0

    move v8, v15

    goto :goto_4b

    :pswitch_62
    move v8, v14

    move/from16 v23, v22

    goto :goto_4b

    :pswitch_63
    move v8, v7

    goto :goto_4b

    :pswitch_64
    move v8, v6

    goto :goto_4b

    :pswitch_65
    move/from16 v23, v5

    move v8, v13

    goto :goto_4b

    :pswitch_66
    move v8, v4

    goto :goto_4b

    :pswitch_67
    move/from16 v23, v3

    move/from16 v8, v22

    :goto_4b
    move/from16 v0, v23

    goto :goto_4d

    :cond_4c
    if-ne v2, v12, :cond_4d

    packed-switch v1, :pswitch_data_26

    move v8, v9

    goto :goto_4a

    :cond_4d
    if-ne v2, v10, :cond_4e

    packed-switch v1, :pswitch_data_27

    move v0, v9

    goto :goto_4c

    :pswitch_68
    move v0, v8

    goto :goto_4d

    :cond_4e
    move v0, v11

    :goto_4c
    move v8, v0

    :goto_4d
    filled-new-array {v0, v8}, [I

    move-result-object v0

    goto :goto_4e

    :cond_4f
    const/4 v0, 0x0

    goto :goto_4e

    :cond_50
    new-array v0, v10, [I

    aput v11, v0, v9

    aput v11, v0, v12

    :goto_4e
    if-eqz v0, :cond_52

    aget v1, v0, v9

    if-ne v1, v11, :cond_51

    aget v2, v0, v12

    if-ne v2, v11, :cond_51

    goto :goto_4f

    :cond_51
    aget v2, v0, v12

    sub-int/2addr v1, v2

    invoke-static/range {p5 .. p6}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    int-to-double v3, v1

    int-to-double v1, v2

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    div-double/2addr v1, v5

    mul-double/2addr v1, v3

    aget v0, v0, v12

    int-to-double v3, v0

    add-double/2addr v1, v3

    double-to-int v0, v1

    return v0

    :cond_52
    :goto_4f
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x5
        :pswitch_19
        :pswitch_1c
        :pswitch_1b
        :pswitch_17
        :pswitch_1a
        :pswitch_18
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x1
        :pswitch_29
        :pswitch_28
        :pswitch_22
        :pswitch_20
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_21
    .end packed-switch

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_33
        :pswitch_2c
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2b
    .end packed-switch

    :pswitch_data_13
    .packed-switch 0x1
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
    .end packed-switch

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch

    :pswitch_data_15
    .packed-switch 0x0
        :pswitch_37
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
    .end packed-switch

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch

    :pswitch_data_17
    .packed-switch 0x0
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
    .end packed-switch

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
    .end packed-switch

    :pswitch_data_19
    .packed-switch 0x0
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
    .end packed-switch

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
    .end packed-switch

    :pswitch_data_1b
    .packed-switch 0x1
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
    .end packed-switch

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
    .end packed-switch

    :pswitch_data_1d
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4e
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
    .end packed-switch

    :pswitch_data_1f
    .packed-switch 0x0
        :pswitch_51
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
    .end packed-switch

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
    .end packed-switch

    :pswitch_data_21
    .packed-switch 0x0
        :pswitch_54
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
    .end packed-switch

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_55
        :pswitch_56
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
    .end packed-switch

    :pswitch_data_23
    .packed-switch 0x0
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
    .end packed-switch

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
    .end packed-switch

    :pswitch_data_25
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
    .end packed-switch

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
    .end packed-switch

    :pswitch_data_27
    .packed-switch 0x0
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
    .end packed-switch
.end method

.method public static getColorTransferValue_Hybrid(IIIDD)I
    .locals 32

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/16 v7, 0xef

    const/4 v9, 0x7

    const/16 v10, 0xd8

    const/16 v11, 0xfe

    const/4 v12, 0x5

    const/16 v13, 0xff

    const/16 v14, 0xcc

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v0, v5, :cond_c

    if-ne v1, v5, :cond_3

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez v2, :cond_0

    packed-switch v0, :pswitch_data_0

    move/from16 v7, v16

    goto :goto_3

    :pswitch_0
    move v7, v11

    goto :goto_4

    :pswitch_1
    move v7, v13

    goto :goto_3

    :cond_0
    if-ne v2, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    move/from16 v6, v16

    :goto_0
    move v11, v6

    goto :goto_1

    :pswitch_2
    move v6, v13

    goto :goto_1

    :pswitch_3
    move v6, v11

    goto :goto_1

    :pswitch_4
    move v6, v13

    move v11, v14

    goto :goto_1

    :pswitch_5
    move v11, v14

    const/16 v6, 0xee

    goto :goto_1

    :pswitch_6
    move v6, v13

    goto :goto_0

    :goto_1
    move v7, v6

    goto :goto_4

    :cond_1
    if-ne v2, v3, :cond_2

    const/16 v1, 0xe2

    packed-switch v0, :pswitch_data_2

    move/from16 v13, v16

    :pswitch_7
    move v14, v13

    goto :goto_2

    :pswitch_8
    move v13, v1

    goto :goto_2

    :pswitch_9
    const/16 v13, 0xe4

    goto :goto_2

    :pswitch_a
    const/16 v13, 0xdc

    :goto_2
    :pswitch_b
    move v7, v13

    :pswitch_c
    move v11, v14

    goto :goto_4

    :cond_2
    move v7, v4

    :goto_3
    move v11, v7

    :goto_4
    filled-new-array {v7, v11}, [I

    move-result-object v0

    goto/16 :goto_5e

    :cond_3
    if-ne v1, v15, :cond_8

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez v2, :cond_5

    if-eq v0, v9, :cond_4

    move/from16 v0, v16

    goto :goto_5

    :cond_4
    move v0, v5

    :goto_5
    move/from16 v1, v16

    goto :goto_8

    :cond_5
    if-ne v2, v5, :cond_6

    packed-switch v0, :pswitch_data_3

    goto :goto_6

    :pswitch_d
    move v0, v5

    goto :goto_7

    :cond_6
    if-ne v2, v3, :cond_7

    :goto_6
    move/from16 v0, v16

    :goto_7
    move v1, v0

    goto :goto_8

    :cond_7
    move v0, v4

    goto :goto_7

    :goto_8
    filled-new-array {v0, v1}, [I

    move-result-object v0

    goto/16 :goto_5e

    :cond_8
    if-ne v1, v12, :cond_51

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    const/16 v1, 0x9c

    const/16 v6, 0xac

    if-nez v2, :cond_9

    packed-switch v0, :pswitch_data_4

    :goto_9
    move/from16 v3, v16

    goto :goto_a

    :pswitch_e
    move v3, v10

    goto :goto_a

    :pswitch_f
    const/16 v3, 0xca

    goto :goto_a

    :pswitch_10
    const/16 v3, 0xbc

    goto :goto_a

    :pswitch_11
    move v3, v6

    goto :goto_a

    :pswitch_12
    move v3, v1

    goto :goto_a

    :pswitch_13
    move v3, v5

    :goto_a
    :pswitch_14
    move/from16 v0, v16

    goto :goto_c

    :cond_9
    if-ne v2, v5, :cond_a

    packed-switch v0, :pswitch_data_5

    goto :goto_9

    :pswitch_15
    move v3, v15

    goto :goto_a

    :cond_a
    if-ne v2, v3, :cond_b

    move/from16 v0, v16

    :goto_b
    move v3, v0

    goto :goto_c

    :cond_b
    move v0, v4

    goto :goto_b

    :goto_c
    filled-new-array {v3, v0}, [I

    move-result-object v0

    goto/16 :goto_5e

    :cond_c
    const/16 v19, 0xd4

    const/16 v20, 0xd0

    const/16 v21, 0xd1

    const/16 v22, 0xd3

    const/16 v23, 0xd2

    const/16 v24, 0xcf

    const/4 v6, 0x4

    if-ne v0, v3, :cond_1a

    if-ne v1, v5, :cond_10

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    const/16 v1, 0xc2

    if-nez v2, :cond_d

    packed-switch v0, :pswitch_data_6

    move/from16 v3, v16

    goto/16 :goto_13

    :pswitch_16
    move v3, v11

    goto/16 :goto_14

    :pswitch_17
    const/16 v3, 0xa4

    :goto_d
    move v11, v14

    goto/16 :goto_14

    :pswitch_18
    const/16 v3, 0xad

    goto :goto_d

    :pswitch_19
    const/16 v3, 0xb5

    goto :goto_d

    :pswitch_1a
    move v11, v14

    const/16 v3, 0xbc

    goto/16 :goto_14

    :pswitch_1b
    move v3, v1

    goto :goto_d

    :pswitch_1c
    move v3, v13

    goto :goto_13

    :cond_d
    if-ne v2, v5, :cond_e

    packed-switch v0, :pswitch_data_7

    move/from16 v0, v16

    move v13, v0

    goto :goto_f

    :pswitch_1d
    move v0, v13

    goto :goto_f

    :pswitch_1e
    const/16 v13, 0xa2

    :goto_e
    move v0, v13

    move v13, v14

    goto :goto_f

    :pswitch_1f
    const/16 v13, 0xab

    goto :goto_e

    :pswitch_20
    const/16 v13, 0xb3

    goto :goto_e

    :pswitch_21
    const/16 v13, 0xba

    goto :goto_e

    :pswitch_22
    const/16 v13, 0xc0

    goto :goto_e

    :goto_f
    move v3, v0

    :goto_10
    move v11, v13

    goto :goto_14

    :cond_e
    if-ne v2, v3, :cond_f

    packed-switch v0, :pswitch_data_8

    move/from16 v1, v16

    move v13, v1

    goto :goto_12

    :pswitch_23
    move v1, v13

    goto :goto_12

    :pswitch_24
    const/16 v13, 0xc1

    :goto_11
    move v1, v13

    :pswitch_25
    move v13, v14

    goto :goto_12

    :pswitch_26
    const/16 v13, 0xc3

    goto :goto_11

    :pswitch_27
    const/16 v13, 0xc5

    goto :goto_11

    :pswitch_28
    const/16 v13, 0xc7

    goto :goto_11

    :goto_12
    move v3, v1

    goto :goto_10

    :cond_f
    move v3, v4

    :goto_13
    move v11, v3

    :goto_14
    filled-new-array {v3, v11}, [I

    move-result-object v0

    goto/16 :goto_5e

    :cond_10
    if-ne v1, v15, :cond_14

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    const/16 v1, 0xd5

    if-nez v2, :cond_11

    packed-switch v0, :pswitch_data_9

    move/from16 v10, v16

    goto/16 :goto_1a

    :pswitch_29
    move v10, v13

    goto/16 :goto_1b

    :goto_15
    :pswitch_2a
    move v13, v14

    goto/16 :goto_1b

    :pswitch_2b
    move v10, v1

    goto :goto_15

    :pswitch_2c
    move v13, v14

    move/from16 v10, v22

    goto/16 :goto_1b

    :pswitch_2d
    move v13, v14

    move/from16 v10, v21

    goto/16 :goto_1b

    :pswitch_2e
    move v13, v14

    goto :goto_19

    :cond_11
    if-ne v2, v5, :cond_12

    packed-switch v0, :pswitch_data_a

    move/from16 v10, v16

    :goto_16
    move v11, v10

    goto :goto_18

    :pswitch_2f
    move v10, v11

    goto :goto_18

    :goto_17
    :pswitch_30
    move v11, v14

    goto :goto_18

    :pswitch_31
    move v10, v1

    goto :goto_17

    :pswitch_32
    move v11, v14

    move/from16 v10, v22

    goto :goto_18

    :pswitch_33
    move v11, v14

    move/from16 v10, v20

    goto :goto_18

    :pswitch_34
    move v11, v14

    move/from16 v10, v24

    goto :goto_18

    :pswitch_35
    move v10, v13

    goto :goto_16

    :goto_18
    move v13, v11

    goto :goto_1b

    :cond_12
    if-ne v2, v3, :cond_13

    packed-switch v0, :pswitch_data_b

    move/from16 v13, v16

    :pswitch_36
    move/from16 v24, v13

    goto :goto_19

    :pswitch_37
    move v13, v14

    move/from16 v24, v19

    goto :goto_19

    :pswitch_38
    move v13, v14

    move/from16 v24, v22

    goto :goto_19

    :pswitch_39
    move v13, v14

    move/from16 v24, v23

    goto :goto_19

    :pswitch_3a
    move v13, v14

    move/from16 v24, v20

    :goto_19
    move/from16 v10, v24

    goto :goto_1b

    :cond_13
    move v10, v4

    :goto_1a
    move v13, v10

    :goto_1b
    filled-new-array {v10, v13}, [I

    move-result-object v0

    goto/16 :goto_5e

    :cond_14
    if-ne v1, v12, :cond_51

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez v2, :cond_17

    if-eq v0, v3, :cond_15

    if-eq v0, v15, :cond_15

    if-eq v0, v6, :cond_16

    if-eq v0, v12, :cond_16

    move/from16 v3, v16

    goto :goto_1c

    :cond_15
    move v3, v5

    :cond_16
    :goto_1c
    move/from16 v0, v16

    goto :goto_1f

    :cond_17
    if-ne v2, v5, :cond_18

    :goto_1d
    move/from16 v0, v16

    :goto_1e
    move v3, v0

    goto :goto_1f

    :cond_18
    if-ne v2, v3, :cond_19

    goto :goto_1d

    :cond_19
    move v0, v4

    goto :goto_1e

    :goto_1f
    filled-new-array {v3, v0}, [I

    move-result-object v0

    goto/16 :goto_5e

    :cond_1a
    const/16 v17, 0xd7

    const/16 v25, 0xda

    const/16 v26, 0xeb

    const/16 v27, 0x33

    if-ne v0, v15, :cond_27

    const/16 v0, 0x49

    if-ne v1, v5, :cond_1f

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v1

    if-nez v2, :cond_1c

    packed-switch v1, :pswitch_data_c

    :goto_20
    move/from16 v0, v16

    goto :goto_23

    :cond_1b
    :pswitch_3b
    move v0, v5

    goto :goto_23

    :cond_1c
    if-ne v2, v5, :cond_1d

    if-eq v1, v9, :cond_1b

    goto :goto_20

    :cond_1d
    if-ne v2, v3, :cond_1e

    packed-switch v1, :pswitch_data_d

    move/from16 v0, v16

    :pswitch_3c
    move/from16 v27, v0

    goto :goto_22

    :pswitch_3d
    const/16 v27, 0x51

    :goto_21
    :pswitch_3e
    move/from16 v0, v27

    goto :goto_22

    :pswitch_3f
    const/16 v27, 0x3f

    goto :goto_21

    :pswitch_40
    const/16 v27, 0x26

    goto :goto_21

    :goto_22
    move v1, v0

    move/from16 v0, v27

    goto :goto_24

    :cond_1e
    move v0, v4

    :goto_23
    move v1, v0

    :goto_24
    filled-new-array {v1, v0}, [I

    move-result-object v0

    goto/16 :goto_5e

    :cond_1f
    if-ne v1, v15, :cond_23

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez v2, :cond_20

    packed-switch v0, :pswitch_data_e

    move/from16 v11, v16

    goto/16 :goto_2a

    :pswitch_41
    move v11, v13

    goto/16 :goto_2b

    :pswitch_42
    const/16 v11, 0xf3

    goto :goto_27

    :pswitch_43
    move v11, v14

    move/from16 v13, v26

    goto/16 :goto_2b

    :pswitch_44
    const/16 v11, 0xe3

    goto :goto_27

    :pswitch_45
    const/16 v11, 0xdd

    goto :goto_27

    :pswitch_46
    const/16 v11, 0xd6

    goto :goto_27

    :cond_20
    if-ne v2, v5, :cond_21

    packed-switch v0, :pswitch_data_f

    move/from16 v11, v16

    :goto_25
    :pswitch_47
    move v14, v11

    goto :goto_27

    :pswitch_48
    move v11, v13

    goto :goto_27

    :pswitch_49
    const/16 v0, 0xfb

    :goto_26
    move v11, v0

    goto :goto_27

    :pswitch_4a
    move v11, v7

    goto :goto_27

    :pswitch_4b
    const/16 v0, 0xe5

    goto :goto_26

    :pswitch_4c
    const/16 v11, 0xdc

    goto :goto_27

    :pswitch_4d
    move v11, v13

    goto :goto_25

    :goto_27
    move v13, v11

    move v11, v14

    goto :goto_2b

    :cond_21
    if-ne v2, v3, :cond_22

    packed-switch v0, :pswitch_data_10

    move/from16 v13, v16

    :pswitch_4e
    move/from16 v25, v13

    goto :goto_29

    :goto_28
    :pswitch_4f
    move v13, v14

    goto :goto_29

    :pswitch_50
    const/16 v13, 0xd9

    move/from16 v25, v13

    goto :goto_28

    :pswitch_51
    move v13, v14

    move/from16 v25, v17

    goto :goto_29

    :pswitch_52
    move v13, v14

    move/from16 v25, v19

    :goto_29
    move v11, v13

    move/from16 v13, v25

    goto :goto_2b

    :cond_22
    move v11, v4

    :goto_2a
    :pswitch_53
    move v13, v11

    :goto_2b
    filled-new-array {v13, v11}, [I

    move-result-object v0

    goto/16 :goto_5e

    :cond_23
    if-ne v1, v12, :cond_51

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v1

    const/16 v6, 0x55

    if-nez v2, :cond_24

    packed-switch v1, :pswitch_data_11

    goto :goto_2f

    :pswitch_54
    const/16 v6, 0x73

    :goto_2c
    :pswitch_55
    move v0, v6

    goto :goto_31

    :pswitch_56
    const/16 v6, 0x6d

    goto :goto_2c

    :pswitch_57
    const/16 v6, 0x67

    goto :goto_2c

    :pswitch_58
    const/16 v6, 0x5d

    goto :goto_2c

    :cond_24
    if-ne v2, v5, :cond_25

    packed-switch v1, :pswitch_data_12

    move/from16 v0, v16

    :goto_2d
    :pswitch_59
    move v6, v0

    goto :goto_2e

    :pswitch_5a
    const/16 v0, 0x5e

    goto :goto_2d

    :pswitch_5b
    const/16 v0, 0x59

    goto :goto_2d

    :pswitch_5c
    move v0, v6

    goto :goto_2e

    :pswitch_5d
    const/16 v0, 0x4f

    goto :goto_2d

    :goto_2e
    move/from16 v31, v6

    move v6, v0

    move/from16 v0, v31

    goto :goto_31

    :cond_25
    if-ne v2, v3, :cond_26

    :goto_2f
    move/from16 v0, v16

    :goto_30
    move v6, v0

    goto :goto_31

    :cond_26
    move v0, v4

    goto :goto_30

    :goto_31
    filled-new-array {v0, v6}, [I

    move-result-object v0

    goto/16 :goto_5e

    :cond_27
    const/16 v18, 0xe8

    const/16 v19, 0xcd

    const/16 v28, 0xce

    const/16 v29, 0xcb

    const/16 v30, 0xe1

    if-ne v0, v6, :cond_33

    if-ne v1, v5, :cond_2b

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez v2, :cond_28

    packed-switch v0, :pswitch_data_13

    goto :goto_32

    :pswitch_5e
    move v0, v5

    goto :goto_33

    :cond_28
    if-ne v2, v5, :cond_29

    :goto_32
    move/from16 v0, v16

    :goto_33
    move v1, v0

    goto :goto_34

    :cond_29
    if-ne v2, v3, :cond_2a

    goto :goto_32

    :cond_2a
    move v0, v4

    goto :goto_33

    :goto_34
    filled-new-array {v1, v0}, [I

    move-result-object v0

    goto/16 :goto_5e

    :cond_2b
    if-ne v1, v15, :cond_2f

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez v2, :cond_2c

    const/16 v1, 0xe6

    packed-switch v0, :pswitch_data_14

    move/from16 v1, v16

    goto/16 :goto_39

    :pswitch_5f
    move v1, v13

    goto/16 :goto_3a

    :pswitch_60
    move/from16 v13, v24

    goto/16 :goto_3a

    :pswitch_61
    move v13, v14

    goto/16 :goto_3a

    :pswitch_62
    move v13, v14

    move/from16 v1, v30

    goto :goto_3a

    :pswitch_63
    move v13, v14

    move/from16 v1, v17

    goto :goto_3a

    :pswitch_64
    move v13, v14

    goto :goto_38

    :cond_2c
    if-ne v2, v5, :cond_2d

    packed-switch v0, :pswitch_data_15

    move/from16 v10, v16

    :goto_35
    move v11, v10

    goto :goto_37

    :pswitch_65
    move v10, v11

    goto :goto_37

    :pswitch_66
    const/16 v10, 0xfd

    :goto_36
    :pswitch_67
    move v11, v14

    goto :goto_37

    :pswitch_68
    const/16 v10, 0xf2

    goto :goto_36

    :pswitch_69
    move v11, v14

    move/from16 v10, v18

    goto :goto_37

    :pswitch_6a
    const/16 v10, 0xe0

    goto :goto_36

    :pswitch_6b
    move v10, v13

    goto :goto_35

    :goto_37
    move v1, v10

    move v13, v11

    goto :goto_3a

    :cond_2d
    if-ne v2, v3, :cond_2e

    packed-switch v0, :pswitch_data_16

    move/from16 v13, v16

    :pswitch_6c
    move/from16 v22, v13

    goto :goto_38

    :pswitch_6d
    move v13, v14

    move/from16 v22, v23

    goto :goto_38

    :pswitch_6e
    move v13, v14

    move/from16 v22, v20

    :goto_38
    move/from16 v1, v22

    goto :goto_3a

    :cond_2e
    move v1, v4

    :goto_39
    move v13, v1

    :goto_3a
    filled-new-array {v1, v13}, [I

    move-result-object v0

    goto/16 :goto_5e

    :cond_2f
    if-ne v1, v12, :cond_51

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez v2, :cond_30

    packed-switch v0, :pswitch_data_17

    :goto_3b
    move/from16 v8, v16

    goto :goto_3d

    :pswitch_6f
    move v8, v13

    goto :goto_3e

    :pswitch_70
    move v13, v14

    const/16 v8, 0xca

    goto :goto_3e

    :pswitch_71
    move v13, v14

    move/from16 v8, v29

    goto :goto_3e

    :cond_30
    if-ne v2, v5, :cond_31

    packed-switch v0, :pswitch_data_18

    goto :goto_3b

    :pswitch_72
    const/16 v8, 0xc8

    move v13, v14

    goto :goto_3e

    :pswitch_73
    move v13, v14

    const/16 v8, 0xc9

    goto :goto_3e

    :cond_31
    if-ne v2, v3, :cond_32

    packed-switch v0, :pswitch_data_19

    move/from16 v13, v16

    :pswitch_74
    move/from16 v28, v13

    goto :goto_3c

    :pswitch_75
    move v13, v14

    goto :goto_3c

    :pswitch_76
    move v13, v14

    move/from16 v28, v19

    :goto_3c
    move/from16 v8, v28

    goto :goto_3e

    :cond_32
    move v8, v4

    :goto_3d
    move v13, v8

    :goto_3e
    filled-new-array {v8, v13}, [I

    move-result-object v0

    goto/16 :goto_5e

    :cond_33
    const/16 v17, 0xed

    const/4 v7, 0x6

    const/16 v8, 0x8

    if-ne v0, v12, :cond_44

    const/16 v0, 0x29

    const/16 v9, 0x20

    if-ne v1, v5, :cond_3c

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v1

    const/16 v10, 0x9

    if-nez v2, :cond_34

    packed-switch v1, :pswitch_data_1a

    move/from16 v0, v16

    goto/16 :goto_43

    :pswitch_77
    move v0, v5

    goto/16 :goto_43

    :pswitch_78
    const/16 v10, 0x27

    goto :goto_40

    :pswitch_79
    const/16 v10, 0x1e

    goto :goto_40

    :pswitch_7a
    const/16 v10, 0x16

    goto :goto_40

    :pswitch_7b
    const/16 v10, 0xf

    goto :goto_40

    :cond_34
    if-ne v2, v5, :cond_3a

    if-eq v1, v5, :cond_38

    if-eq v1, v3, :cond_37

    if-eq v1, v15, :cond_36

    if-eq v1, v6, :cond_35

    if-eq v1, v12, :cond_39

    move/from16 v0, v16

    goto :goto_3f

    :cond_35
    move v0, v9

    goto :goto_3f

    :cond_36
    const/16 v0, 0x18

    goto :goto_3f

    :cond_37
    const/16 v0, 0x11

    goto :goto_3f

    :cond_38
    const/16 v0, 0xb

    :cond_39
    :goto_3f
    move v10, v0

    :goto_40
    :pswitch_7c
    move/from16 v0, v16

    goto :goto_44

    :cond_3a
    if-ne v2, v3, :cond_3b

    packed-switch v1, :pswitch_data_1b

    move/from16 v0, v16

    move v6, v0

    goto :goto_42

    :pswitch_7d
    const/16 v0, 0x2f

    const/16 v6, 0x76

    goto :goto_42

    :pswitch_7e
    const/16 v6, 0x66

    goto :goto_42

    :pswitch_7f
    const/16 v6, 0x53

    move v0, v9

    goto :goto_42

    :pswitch_80
    move v6, v0

    :goto_41
    :pswitch_81
    move/from16 v0, v16

    goto :goto_42

    :pswitch_82
    move v6, v9

    goto :goto_41

    :pswitch_83
    const/16 v6, 0xa

    goto :goto_41

    :pswitch_84
    move v6, v10

    goto :goto_41

    :pswitch_85
    move v6, v8

    goto :goto_41

    :pswitch_86
    move v6, v7

    goto :goto_41

    :goto_42
    move v10, v6

    goto :goto_44

    :cond_3b
    move v0, v4

    :goto_43
    move v10, v0

    :goto_44
    filled-new-array {v10, v0}, [I

    move-result-object v0

    goto/16 :goto_5e

    :cond_3c
    if-ne v1, v15, :cond_40

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v1

    if-nez v2, :cond_3d

    :goto_45
    move/from16 v0, v16

    :goto_46
    move v1, v0

    goto :goto_48

    :cond_3d
    if-ne v2, v5, :cond_3e

    packed-switch v1, :pswitch_data_1c

    goto :goto_45

    :pswitch_87
    move v0, v5

    goto :goto_46

    :cond_3e
    if-ne v2, v3, :cond_3f

    packed-switch v1, :pswitch_data_1d

    move/from16 v27, v16

    goto :goto_47

    :pswitch_88
    const/16 v27, 0x47

    goto :goto_47

    :pswitch_89
    const/16 v27, 0x3d

    goto :goto_47

    :pswitch_8a
    move/from16 v27, v0

    goto :goto_47

    :pswitch_8b
    move/from16 v27, v9

    :goto_47
    :pswitch_8c
    move/from16 v0, v16

    move/from16 v1, v27

    goto :goto_48

    :cond_3f
    move v0, v4

    goto :goto_46

    :goto_48
    filled-new-array {v1, v0}, [I

    move-result-object v0

    goto/16 :goto_5e

    :cond_40
    if-ne v1, v12, :cond_51

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez v2, :cond_41

    packed-switch v0, :pswitch_data_1e

    move/from16 v8, v16

    goto/16 :goto_4d

    :pswitch_8d
    move v8, v11

    goto/16 :goto_4e

    :pswitch_8e
    move v11, v14

    const/16 v8, 0xc9

    goto/16 :goto_4e

    :pswitch_8f
    move v11, v14

    const/16 v8, 0xca

    goto :goto_4e

    :pswitch_90
    move v11, v14

    move/from16 v8, v29

    goto :goto_4e

    :pswitch_91
    move v8, v13

    goto :goto_4d

    :cond_41
    if-ne v2, v5, :cond_42

    packed-switch v0, :pswitch_data_1f

    move/from16 v11, v16

    :goto_49
    :pswitch_92
    move/from16 v28, v11

    goto :goto_4a

    :pswitch_93
    move v11, v14

    goto :goto_4a

    :pswitch_94
    move v11, v14

    move/from16 v28, v19

    goto :goto_4a

    :pswitch_95
    move v11, v14

    goto :goto_49

    :pswitch_96
    move v11, v13

    goto :goto_49

    :goto_4a
    move/from16 v8, v28

    goto :goto_4e

    :cond_42
    if-ne v2, v3, :cond_43

    packed-switch v0, :pswitch_data_20

    move/from16 v13, v16

    :pswitch_97
    move/from16 v25, v13

    goto :goto_4c

    :pswitch_98
    const/16 v13, 0xf4

    :goto_4b
    move/from16 v25, v13

    :pswitch_99
    move v13, v14

    goto :goto_4c

    :pswitch_9a
    move v13, v14

    move/from16 v25, v17

    goto :goto_4c

    :pswitch_9b
    const/16 v13, 0xe7

    goto :goto_4b

    :pswitch_9c
    move v13, v14

    move/from16 v25, v30

    :goto_4c
    move v11, v13

    move/from16 v8, v25

    goto :goto_4e

    :cond_43
    move v8, v4

    :goto_4d
    move v11, v8

    :goto_4e
    filled-new-array {v8, v11}, [I

    move-result-object v0

    goto/16 :goto_5e

    :cond_44
    if-ne v0, v7, :cond_52

    const/16 v0, 0xf0

    const/16 v6, 0xfa

    if-ne v1, v5, :cond_48

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v1

    if-nez v2, :cond_45

    packed-switch v1, :pswitch_data_21

    move/from16 v11, v16

    goto/16 :goto_53

    :goto_4f
    :pswitch_9d
    move v11, v14

    goto/16 :goto_54

    :pswitch_9e
    const/16 v11, 0xf9

    move v13, v11

    goto :goto_4f

    :pswitch_9f
    move v11, v13

    goto :goto_54

    :cond_45
    if-ne v2, v5, :cond_46

    packed-switch v1, :pswitch_data_22

    move/from16 v6, v16

    :goto_50
    move v13, v6

    goto :goto_52

    :pswitch_a0
    move v6, v13

    goto :goto_52

    :pswitch_a1
    move v6, v13

    :goto_51
    :pswitch_a2
    move v13, v14

    :goto_52
    move v11, v13

    move v13, v6

    goto :goto_54

    :cond_46
    if-ne v2, v3, :cond_47

    packed-switch v1, :pswitch_data_23

    move/from16 v6, v16

    goto :goto_50

    :pswitch_a3
    const/16 v6, 0xb6

    goto :goto_50

    :pswitch_a4
    move v6, v14

    goto :goto_50

    :pswitch_a5
    const/16 v6, 0xdf

    goto :goto_50

    :pswitch_a6
    move v6, v0

    goto :goto_50

    :pswitch_a7
    const/16 v6, 0xec

    goto :goto_51

    :pswitch_a8
    move v13, v14

    const/16 v6, 0xee

    goto :goto_52

    :pswitch_a9
    move v13, v14

    move/from16 v6, v17

    goto :goto_52

    :pswitch_aa
    move v13, v14

    move/from16 v6, v18

    goto :goto_52

    :pswitch_ab
    move v13, v14

    move/from16 v6, v30

    goto :goto_52

    :cond_47
    move v11, v4

    :goto_53
    :pswitch_ac
    move v13, v11

    :goto_54
    filled-new-array {v13, v11}, [I

    move-result-object v0

    goto/16 :goto_5e

    :cond_48
    if-ne v1, v15, :cond_4d

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez v2, :cond_4a

    if-eq v0, v9, :cond_49

    if-eq v0, v8, :cond_49

    move/from16 v0, v16

    goto :goto_55

    :cond_49
    move v0, v5

    :goto_55
    move/from16 v1, v16

    goto :goto_58

    :cond_4a
    if-ne v2, v5, :cond_4b

    packed-switch v0, :pswitch_data_24

    goto :goto_56

    :pswitch_ad
    move v0, v5

    goto :goto_57

    :cond_4b
    if-ne v2, v3, :cond_4c

    :goto_56
    move/from16 v0, v16

    :goto_57
    move v1, v0

    goto :goto_58

    :cond_4c
    move v0, v4

    goto :goto_57

    :goto_58
    filled-new-array {v1, v0}, [I

    move-result-object v0

    goto/16 :goto_5e

    :cond_4d
    if-ne v1, v12, :cond_51

    invoke-static/range {p3 .. p4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v1

    const/16 v7, 0xea

    const/16 v8, 0xa9

    const/16 v9, 0xa1

    const/16 v11, 0xf6

    const/16 v12, 0x98

    const/16 v15, 0x90

    const/16 v17, 0xfc

    const/16 v18, 0x8a

    if-nez v2, :cond_4e

    packed-switch v1, :pswitch_data_25

    move/from16 v13, v16

    :pswitch_ae
    move/from16 v29, v13

    goto :goto_59

    :pswitch_af
    move/from16 v29, v17

    move/from16 v13, v18

    goto :goto_59

    :pswitch_b0
    move/from16 v29, v6

    move v13, v15

    goto :goto_59

    :pswitch_b1
    move/from16 v29, v11

    move v13, v12

    goto :goto_59

    :pswitch_b2
    move/from16 v29, v0

    move v13, v9

    goto :goto_59

    :pswitch_b3
    move/from16 v29, v7

    move v13, v8

    goto :goto_59

    :pswitch_b4
    move v13, v14

    :goto_59
    move/from16 v0, v29

    goto/16 :goto_5d

    :cond_4e
    if-ne v2, v5, :cond_4f

    packed-switch v1, :pswitch_data_26

    move/from16 v13, v16

    :pswitch_b5
    move/from16 v24, v13

    goto :goto_5a

    :pswitch_b6
    move/from16 v24, v17

    move/from16 v13, v18

    goto :goto_5a

    :pswitch_b7
    move/from16 v24, v6

    move v13, v15

    goto :goto_5a

    :pswitch_b8
    move/from16 v24, v11

    move v13, v12

    goto :goto_5a

    :pswitch_b9
    move/from16 v24, v0

    move v13, v9

    goto :goto_5a

    :pswitch_ba
    move/from16 v24, v7

    move v13, v8

    goto :goto_5a

    :pswitch_bb
    move v13, v14

    move/from16 v24, v23

    goto :goto_5a

    :pswitch_bc
    move v13, v14

    move/from16 v24, v21

    goto :goto_5a

    :pswitch_bd
    move v13, v14

    goto :goto_5a

    :pswitch_be
    move v13, v14

    move/from16 v24, v28

    goto :goto_5a

    :pswitch_bf
    move v13, v14

    move/from16 v24, v19

    :goto_5a
    move/from16 v0, v24

    goto :goto_5d

    :cond_4f
    if-ne v2, v3, :cond_50

    packed-switch v1, :pswitch_data_27

    move/from16 v13, v16

    :pswitch_c0
    move v14, v13

    goto :goto_5c

    :pswitch_c1
    const/16 v0, 0xf1

    :goto_5b
    move v13, v0

    goto :goto_5c

    :pswitch_c2
    move/from16 v13, v26

    goto :goto_5c

    :pswitch_c3
    const/16 v13, 0xe4

    goto :goto_5c

    :pswitch_c4
    const/16 v0, 0xde

    goto :goto_5b

    :pswitch_c5
    move v13, v10

    :goto_5c
    move v0, v13

    move v13, v14

    goto :goto_5d

    :cond_50
    move v0, v4

    move v13, v0

    :goto_5d
    filled-new-array {v0, v13}, [I

    move-result-object v0

    goto :goto_5e

    :cond_51
    const/4 v0, 0x0

    goto :goto_5e

    :cond_52
    new-array v0, v3, [I

    aput v4, v0, v16

    aput v4, v0, v5

    :goto_5e
    if-eqz v0, :cond_54

    aget v1, v0, v16

    if-ne v1, v4, :cond_53

    aget v2, v0, v5

    if-ne v2, v4, :cond_53

    goto :goto_5f

    :cond_53
    aget v2, v0, v5

    sub-int/2addr v1, v2

    invoke-static/range {p5 .. p6}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    int-to-double v3, v1

    int-to-double v1, v2

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v1, v6

    mul-double/2addr v1, v3

    aget v0, v0, v5

    int-to-double v3, v0

    add-double/2addr v1, v3

    double-to-int v0, v1

    return v0

    :cond_54
    :goto_5f
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_13
        :pswitch_14
        :pswitch_14
        :pswitch_15
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_23
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_29
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_36
        :pswitch_2e
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x6
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x6
        :pswitch_40
        :pswitch_3e
        :pswitch_3f
        :pswitch_3c
        :pswitch_3d
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_41
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_53
        :pswitch_53
        :pswitch_41
        :pswitch_41
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4f
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x6
        :pswitch_55
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_54
    .end packed-switch

    :pswitch_data_12
    .packed-switch 0x6
        :pswitch_59
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
    .end packed-switch

    :pswitch_data_13
    .packed-switch 0x6
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
    .end packed-switch

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
    .end packed-switch

    :pswitch_data_15
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_67
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_66
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
    .end packed-switch

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_6e
        :pswitch_6d
        :pswitch_64
        :pswitch_64
        :pswitch_6d
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
    .end packed-switch

    :pswitch_data_17
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_71
        :pswitch_70
        :pswitch_70
        :pswitch_70
        :pswitch_70
        :pswitch_6f
        :pswitch_6f
        :pswitch_6f
        :pswitch_6f
        :pswitch_6f
    .end packed-switch

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_71
        :pswitch_70
        :pswitch_73
        :pswitch_73
        :pswitch_72
        :pswitch_6f
        :pswitch_6f
        :pswitch_6f
        :pswitch_6f
        :pswitch_6f
    .end packed-switch

    :pswitch_data_19
    .packed-switch 0x0
        :pswitch_74
        :pswitch_76
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_74
    .end packed-switch

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_77
        :pswitch_77
        :pswitch_77
        :pswitch_77
    .end packed-switch

    :pswitch_data_1b
    .packed-switch 0x1
        :pswitch_81
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
    .end packed-switch

    :pswitch_data_1c
    .packed-switch 0x6
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
    .end packed-switch

    :pswitch_data_1d
    .packed-switch 0x6
        :pswitch_8b
        :pswitch_8a
        :pswitch_8c
        :pswitch_89
        :pswitch_88
    .end packed-switch

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8f
        :pswitch_8e
        :pswitch_8e
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
    .end packed-switch

    :pswitch_data_1f
    .packed-switch 0x0
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_94
        :pswitch_93
        :pswitch_93
        :pswitch_92
        :pswitch_92
        :pswitch_92
        :pswitch_92
        :pswitch_92
    .end packed-switch

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_97
        :pswitch_99
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_98
        :pswitch_97
        :pswitch_97
        :pswitch_97
        :pswitch_97
        :pswitch_97
    .end packed-switch

    :pswitch_data_21
    .packed-switch 0x0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9d
        :pswitch_9d
        :pswitch_9d
        :pswitch_ac
        :pswitch_ac
        :pswitch_ac
        :pswitch_ac
        :pswitch_ac
    .end packed-switch

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_a2
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
    .end packed-switch

    :pswitch_data_23
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a0
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
    .end packed-switch

    :pswitch_data_24
    .packed-switch 0x6
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
    .end packed-switch

    :pswitch_data_25
    .packed-switch 0x0
        :pswitch_ae
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
    .end packed-switch

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_b5
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
    .end packed-switch

    :pswitch_data_27
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_c0
        :pswitch_c0
        :pswitch_c0
        :pswitch_c0
    .end packed-switch
.end method

.method public static roundHalfUp(D)I
    .locals 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

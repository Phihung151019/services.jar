.class public abstract Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final sDynamicParameters:[[F

.field public static final sParameters:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x3

    const/16 v1, 0x9

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x6

    move v4, v3

    new-array v3, v1, [I

    fill-array-data v3, :array_1

    move v5, v4

    new-array v4, v1, [I

    fill-array-data v4, :array_2

    move v6, v5

    new-array v5, v1, [I

    fill-array-data v5, :array_3

    move v7, v6

    new-array v6, v1, [I

    fill-array-data v6, :array_4

    move v8, v7

    new-array v7, v1, [I

    fill-array-data v7, :array_5

    new-array v1, v1, [I

    fill-array-data v1, :array_6

    new-array v9, v8, [I

    fill-array-data v9, :array_7

    move-object v8, v1

    filled-new-array/range {v2 .. v9}, [[I

    move-result-object v1

    sput-object v1, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    new-array v2, v0, [F

    fill-array-data v2, :array_8

    new-array v3, v0, [F

    fill-array-data v3, :array_9

    new-array v4, v0, [F

    fill-array-data v4, :array_a

    new-array v5, v0, [F

    fill-array-data v5, :array_b

    new-array v6, v0, [F

    fill-array-data v6, :array_c

    new-array v7, v0, [F

    fill-array-data v7, :array_d

    new-array v8, v0, [F

    fill-array-data v8, :array_e

    new-array v9, v0, [F

    fill-array-data v9, :array_f

    filled-new-array/range {v2 .. v9}, [[F

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sDynamicParameters:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1e5
        0x5
        0x3
        0x375
        0x64
        0x190
        0x1f4
        0x258
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x266
        0x7
        0x6
        0x44a
        0x96
        0x190
        0x1f4
        0x3e8
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x276
        0xb
        0x8
        0x57e
        0x12c
        0x190
        0x1f4
        0x5dc
    .end array-data

    :array_3
    .array-data 4
        0x6
        0x44c
        0x13
        0x9
        0x7f2
        0x15e
        0x258
        0x1f4
        0x800
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x866
        0x18
        0xa
        0x9f6
        0x190
        0x258
        0x400
        0x9b0
    .end array-data

    :array_5
    .array-data 4
        0xc
        0x999
        0x1c
        0xe
        0xb29
        0x1f4
        0x400
        0x600
        0x1000
    .end array-data

    :array_6
    .array-data 4
        0x10
        0x999
        0x1c
        0xe
        0xb29
        0x258
        0x400
        0x600
        0x1800
    .end array-data

    :array_7
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_8
    .array-data 4
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_9
    .array-data 4
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40e00000    # 7.0f
    .end array-data

    :array_a
    .array-data 4
        0x40800000    # 4.0f
        0x40c00000    # 6.0f
        0x41200000    # 10.0f
    .end array-data

    :array_b
    .array-data 4
        0x40c00000    # 6.0f
        0x40e00000    # 7.0f
        0x41500000    # 13.0f
    .end array-data

    :array_c
    .array-data 4
        0x41000000    # 8.0f
        0x41000000    # 8.0f
        0x41800000    # 16.0f
    .end array-data

    :array_d
    .array-data 4
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41800000    # 16.0f
    .end array-data

    :array_e
    .array-data 4
        0x41800000    # 16.0f
        0x41600000    # 14.0f
        0x41880000    # 17.0f
    .end array-data

    :array_f
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

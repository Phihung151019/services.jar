.class final enum Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;


# instance fields
.field private final mFwdMethod:[[F

.field private final mRewMethod:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    new-array v4, v1, [F

    fill-array-data v4, :array_2

    filled-new-array {v2, v3, v4}, [[F

    move-result-object v2

    new-array v3, v1, [F

    fill-array-data v3, :array_3

    new-array v4, v1, [F

    fill-array-data v4, :array_4

    new-array v5, v1, [F

    fill-array-data v5, :array_5

    filled-new-array {v3, v4, v5}, [[F

    move-result-object v3

    const-string v4, "Bradford"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;-><init>(Ljava/lang/String;I[[F[[F)V

    new-instance v2, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;

    new-array v3, v1, [F

    fill-array-data v3, :array_6

    new-array v4, v1, [F

    fill-array-data v4, :array_7

    new-array v5, v1, [F

    fill-array-data v5, :array_8

    filled-new-array {v3, v4, v5}, [[F

    move-result-object v3

    new-array v4, v1, [F

    fill-array-data v4, :array_9

    new-array v5, v1, [F

    fill-array-data v5, :array_a

    new-array v6, v1, [F

    fill-array-data v6, :array_b

    filled-new-array {v4, v5, v6}, [[F

    move-result-object v4

    const-string/jumbo v5, "VonKries"

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6, v3, v4}, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;-><init>(Ljava/lang/String;I[[F[[F)V

    new-instance v3, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;

    new-array v4, v1, [F

    fill-array-data v4, :array_c

    new-array v5, v1, [F

    fill-array-data v5, :array_d

    new-array v6, v1, [F

    fill-array-data v6, :array_e

    filled-new-array {v4, v5, v6}, [[F

    move-result-object v4

    new-array v5, v1, [F

    fill-array-data v5, :array_f

    new-array v6, v1, [F

    fill-array-data v6, :array_10

    new-array v1, v1, [F

    fill-array-data v1, :array_11

    filled-new-array {v5, v6, v1}, [[F

    move-result-object v1

    const-string/jumbo v5, "XYZScaling"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4, v1}, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;-><init>(Ljava/lang/String;I[[F[[F)V

    filled-new-array {v0, v2, v3}, [Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;->$VALUES:[Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;

    return-void

    :array_0
    .array-data 4
        0x3f652546    # 0.8951f
        0x3e886595    # 0.2664f
        -0x41dab9f5    # -0.1614f
    .end array-data

    :array_1
    .array-data 4
        -0x40bff36b
        0x3fdb53f8    # 1.7135f
        0x3d1657fb
    .end array-data

    :array_2
    .array-data 4
        0x3d1f559b    # 0.0389f
        -0x4273b646    # -0.0685f
        0x3f83c9ef    # 1.0296f
    .end array-data

    :array_3
    .array-data 4
        0x3f7cab91
        -0x41e96a99
        0x3e23cd43
    .end array-data

    :array_4
    .array-data 4
        0x3edd571f
        0x3f04b343
        0x3d49e592
    .end array-data

    :array_5
    .array-data 4
        -0x43f4440a    # -0.0085287f
        0x3d2403eb
        0x3f77eebf
    .end array-data

    :array_6
    .array-data 4
        0x3eccec42    # 0.40024f
        0x3f3525cc
        -0x425a7fc3
    .end array-data

    :array_7
    .array-data 4
        -0x419843c4
        0x3f952945
        0x3d3b2fec    # 0.0457f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x0
        0x3f6b1099
    .end array-data

    :array_9
    .array-data 4
        0x3fee1265
        -0x406f706c
        0x3e612cc9
    .end array-data

    :array_a
    .array-data 4
        0x3eb8ee14
        0x3f238937
        -0x4929406b    # -6.4E-6f
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x0
        0x3f8b6670
    .end array-data

    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_f
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_11
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I[[F[[F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;->mFwdMethod:[[F

    iput-object p4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;->mRewMethod:[[F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;
    .locals 1

    const-class v0, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;

    return-object p0
.end method

.method public static values()[Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;
    .locals 1

    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;->$VALUES:[Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;

    invoke-virtual {v0}, [Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;

    return-object v0
.end method


# virtual methods
.method public final getFwdMethod()[[F
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;->mFwdMethod:[[F

    return-object p0
.end method

.method public final getRewMethod()[[F
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;->mRewMethod:[[F

    return-object p0
.end method

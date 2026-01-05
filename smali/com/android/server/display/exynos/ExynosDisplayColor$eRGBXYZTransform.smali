.class final enum Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;

.field public static final enum P3:Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;


# instance fields
.field private final mRGB2XYZ:[[F

.field private final mXYZ2RGB:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;

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

    const-string/jumbo v4, "sRGB"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;-><init>(Ljava/lang/String;I[[F[[F)V

    new-instance v2, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;

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

    new-array v1, v1, [F

    fill-array-data v1, :array_b

    filled-new-array {v4, v5, v1}, [[F

    move-result-object v1

    const-string/jumbo v4, "P3"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3, v1}, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;-><init>(Ljava/lang/String;I[[F[[F)V

    sput-object v2, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;->P3:Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;

    filled-new-array {v0, v2}, [Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;->$VALUES:[Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;

    return-void

    :array_0
    .array-data 4
        0x404f6c0d
        -0x403b3722
        -0x4100b631
    .end array-data

    :array_1
    .array-data 4
        -0x4087dfe3    # -0.96924f
        0x3ff01fb0
        0x3d2a3593
    .end array-data

    :array_2
    .array-data 4
        0x3d63dc48    # 0.05563f
        -0x41af1fde    # -0.20398f
        0x3f874ad3
    .end array-data

    :array_3
    .array-data 4
        0x3ed324ea
        0x3eb71540    # 0.357584f
        0x3e38d003
    .end array-data

    :array_4
    .array-data 4
        0x3e59be0a
        0x3f371551
        0x3d93d966
    .end array-data

    :array_5
    .array-data 4
        0x3c9e5c0c    # 0.019331f
        0x3df41c82    # 0.119195f
        0x3f735611
    .end array-data

    :array_6
    .array-data 4
        0x401f9574
        -0x40919115
        -0x4131cfff    # -0.40271f
    .end array-data

    :array_7
    .array-data 4
        -0x40aba68b    # -0.82949f
        0x3fe19ef9
        0x3cc18937    # 0.023625f
    .end array-data

    :array_8
    .array-data 4
        0x3d12d341
        -0x426400fc    # -0.07617f
        0x3f74f65a
    .end array-data

    :array_9
    .array-data 4
        0x3ef91fd6
        0x3e8805a3
        0x3e4af966
    .end array-data

    :array_a
    .array-data 4
        0x3e6a786c
        0x3f3115cf
        0x3da26139    # 0.079287f
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x3d38c869
        0x3f859ff5
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I[[F[[F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;->mXYZ2RGB:[[F

    iput-object p4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;->mRGB2XYZ:[[F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;
    .locals 1

    const-class v0, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;

    return-object p0
.end method

.method public static values()[Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;
    .locals 1

    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;->$VALUES:[Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;

    invoke-virtual {v0}, [Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;

    return-object v0
.end method


# virtual methods
.method public final execute([[F)[[F
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;->mXYZ2RGB:[[F

    invoke-static {v0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->matrixMultiplication([[F[[F)[[F

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;->mRGB2XYZ:[[F

    invoke-static {p1, p0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->matrixMultiplication([[F[[F)[[F

    move-result-object p0

    return-object p0
.end method

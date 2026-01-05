.class public final Lcom/android/server/display/color/AppSaturationController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final TRANSLATION_VECTOR:[F


# instance fields
.field public final mAppsMap:Ljava/util/Map;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/display/color/AppSaturationController;->TRANSLATION_VECTOR:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    return-void
.end method

.method public static computeGrayscaleTransformMatrix(F[F)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    const v1, 0x3e6c8b44    # 0.231f

    mul-float/2addr v1, v0

    const v2, 0x3f370a3d    # 0.715f

    mul-float/2addr v2, v0

    const v3, 0x3d9374bc    # 0.072f

    mul-float/2addr v0, v3

    const/4 v3, 0x3

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v1, v4, v5

    const/4 v1, 0x1

    aput v2, v4, v1

    const/4 v2, 0x2

    aput v0, v4, v2

    aget v0, v4, v5

    add-float/2addr v0, p0

    aput v0, p1, v5

    aget v0, v4, v5

    aput v0, p1, v1

    aput v0, p1, v2

    aget v0, v4, v1

    aput v0, p1, v3

    const/4 v1, 0x4

    add-float v3, v0, p0

    aput v3, p1, v1

    const/4 v1, 0x5

    aput v0, p1, v1

    aget v0, v4, v2

    const/4 v1, 0x6

    aput v0, p1, v1

    const/4 v1, 0x7

    aput v0, p1, v1

    const/16 v1, 0x8

    add-float/2addr v0, p0

    aput v0, p1, v1

    return-void
.end method


# virtual methods
.method public final getSaturationControllerLocked(ILjava/lang/String;)Lcom/android/server/display/color/AppSaturationController$SaturationController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object p0, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;

    return-object p0

    :cond_1
    new-instance p2, Lcom/android/server/display/color/AppSaturationController$SaturationController;

    invoke-direct {p2}, Lcom/android/server/display/color/AppSaturationController$SaturationController;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p2
.end method

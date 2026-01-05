.class public final Lcom/android/server/DssController$PairConfiguration;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAppGlobal:Landroid/graphics/Rect;

.field public final mAppOverride:Landroid/graphics/Rect;

.field public final mBound:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/DssController$PairConfiguration;->mAppGlobal:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/server/DssController$PairConfiguration;->mAppOverride:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/server/DssController$PairConfiguration;->mBound:Ljava/util/function/Consumer;

    return-void
.end method

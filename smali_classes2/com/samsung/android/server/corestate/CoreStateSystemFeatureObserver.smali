.class public final Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSystemFeaturesList:Ljava/util/ArrayList;

.field public final mSystemFeaturesRepository:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->mSystemFeaturesRepository:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->mSystemFeaturesList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->mContext:Landroid/content/Context;

    return-void
.end method

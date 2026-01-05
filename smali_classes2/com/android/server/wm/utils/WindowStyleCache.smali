.class public final Lcom/android/server/wm/utils/WindowStyleCache;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCache:Landroid/util/ArrayMap;

.field public final mEntryFactory:Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda2;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/utils/WindowStyleCache;->mCache:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/wm/utils/WindowStyleCache;->mEntryFactory:Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda2;

    return-void
.end method

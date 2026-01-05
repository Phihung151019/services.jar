.class public final Lcom/android/server/location/injector/SystemScreenInteractiveHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public volatile mIsInteractive:Z

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mIsInteractive:Z

    iput-object p1, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mContext:Landroid/content/Context;

    return-void
.end method

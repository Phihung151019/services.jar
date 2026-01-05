.class public abstract Lcom/android/server/input/UEventManager$UEventListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mObserver:Lcom/android/server/input/UEventManager$UEventListener$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/input/UEventManager$UEventListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/input/UEventManager$UEventListener$1;-><init>(Lcom/android/server/input/UEventManager$UEventListener;)V

    iput-object v0, p0, Lcom/android/server/input/UEventManager$UEventListener;->mObserver:Lcom/android/server/input/UEventManager$UEventListener$1;

    return-void
.end method


# virtual methods
.method public abstract onUEvent(Landroid/os/UEventObserver$UEvent;)V
.end method

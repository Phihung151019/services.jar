.class public final Lcom/android/server/input/UEventManager$UEventListener$1;
.super Landroid/os/UEventObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/UEventManager$UEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/input/UEventManager$UEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/UEventManager$UEventListener$1;->this$0:Lcom/android/server/input/UEventManager$UEventListener;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/UEventManager$UEventListener$1;->this$0:Lcom/android/server/input/UEventManager$UEventListener;

    invoke-virtual {p0, p1}, Lcom/android/server/input/UEventManager$UEventListener;->onUEvent(Landroid/os/UEventObserver$UEvent;)V

    return-void
.end method

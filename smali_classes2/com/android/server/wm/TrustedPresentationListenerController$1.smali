.class public final Lcom/android/server/wm/TrustedPresentationListenerController$1;
.super Landroid/window/WindowInfosListener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/TrustedPresentationListenerController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TrustedPresentationListenerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$1;->this$0:Lcom/android/server/wm/TrustedPresentationListenerController;

    invoke-direct {p0}, Landroid/window/WindowInfosListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWindowInfosChanged([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$1;->this$0:Lcom/android/server/wm/TrustedPresentationListenerController;

    iget-object v0, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/TrustedPresentationListenerController$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/TrustedPresentationListenerController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController$1;[Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

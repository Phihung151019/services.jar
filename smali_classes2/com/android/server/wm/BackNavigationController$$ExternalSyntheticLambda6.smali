.class public final synthetic Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BackNavigationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BackNavigationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/BackNavigationController;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/BackNavigationController;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/BackNavigationController;->onBackNavigationDone(ILandroid/os/Bundle;)V

    return-void
.end method

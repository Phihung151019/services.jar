.class public final synthetic Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/accessibility/ProxyManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/ProxyManager;II)V
    .locals 0

    iput p3, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/accessibility/ProxyManager;

    iput p2, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/accessibility/ProxyManager;

    iget p0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;->f$1:I

    iget-object v1, v0, Lcom/android/server/accessibility/ProxyManager;->mA11yInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v0, v0, Lcom/android/server/accessibility/ProxyManager;->mA11yInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamStateForDisplay(I)V

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeaturesForDisplay(Landroid/view/Display;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/accessibility/ProxyManager;

    iget p0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;->f$1:I

    iget-object v1, v0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda10;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p0, v3}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/accessibility/ProxyManager;II)V

    invoke-static {v2}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/ProxyManager;->broadcastToClientsLocked(Ljava/util/function/Consumer;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/accessibility/ProxyManager;

    iget p0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;->f$1:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda10;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/accessibility/ProxyManager;II)V

    invoke-static {v1}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/ProxyManager;->broadcastToClientsLocked(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/accessibility/ProxyManager;

    iget p0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;->f$1:I

    iget-object v0, v0, Lcom/android/server/accessibility/ProxyManager;->mA11yInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeaturesForDisplay(I)V

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamStateForDisplay(I)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

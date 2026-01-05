.class public final synthetic Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lcom/android/server/companion/virtual/GenericWindowPolicyController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;ILcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;ZLcom/android/server/companion/virtual/GenericWindowPolicyController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    iput p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iput-boolean p4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;->f$3:Z

    iput-object p5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    iget v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iget-boolean v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;->f$3:Z

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    iget-object v4, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    iget-object v4, v4, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v5, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    iget-object v4, v4, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Lcom/android/server/input/InputManagerService;->setMouseScalingEnabled(ZI)V

    iget-object v4, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    iget-object v4, v4, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v4, v1, v5}, Lcom/android/server/input/InputManagerService;->setDisplayEligibilityForPointerCapture(IZ)V

    iget-boolean v2, v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mIsTrusted:Z

    if-eqz v2, :cond_0

    iget-object p0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, v3, v1}, Lcom/android/server/input/InputManagerService;->setPointerIconVisible(ZI)V

    iget-object p0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0, v1, v5}, Landroid/view/WindowManager;->setDisplayImePolicy(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mShowTasksInHostDeviceRecents:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

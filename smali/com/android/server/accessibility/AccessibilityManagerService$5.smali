.class public final Lcom/android/server/accessibility/AccessibilityManagerService$5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final synthetic val$service:Lcom/android/server/accessibility/AccessibilityServiceConnection;

.field public final synthetic val$userState:Lcom/android/server/accessibility/AccessibilityUserState;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$5;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$5;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$5;->val$service:Lcom/android/server/accessibility/AccessibilityServiceConnection;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$5;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$5;->val$service:Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-object p2, p2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$5;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$5;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget p2, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string/jumbo v1, "touch_exploration_granted_accessibility_services"

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(ILjava/lang/String;Ljava/util/Set;)V

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$5;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$5;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "touch_exploration_enabled"

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$5;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    iget v3, v3, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-static {p1, v2, p2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$5;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$5;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

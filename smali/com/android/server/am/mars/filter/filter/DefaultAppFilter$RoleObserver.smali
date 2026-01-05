.class public final Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$RoleObserver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mRm:Landroid/app/role/RoleManager;

.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$RoleObserver;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    iget-object v0, p1, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$RoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    const-string v1, "FILTER 11"

    const-string/jumbo v2, "MARs:DefaultAppFilter"

    iget-object v3, p1, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/role/RoleManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/role/RoleManager;

    iput-object v3, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    if-eqz v3, :cond_0

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, p0, v4}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    const-string/jumbo v3, "android.app.role.ASSISTANT"

    invoke-virtual {v0, v3}, Landroid/app/role/RoleManager;->getDefaultApplication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAssistantPackage:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "default Assistant Package: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAssistantPackage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAssistantPackage:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    const-string/jumbo v3, "android.app.role.WALLET"

    invoke-virtual {v0, v3}, Landroid/app/role/RoleManager;->getDefaultApplication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultWalletPackage:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "default Wallet Package: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultWalletPackage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultWalletPackage:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$RoleObserver;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "Assistant or Wallet default app may be null."

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p2

    const-string/jumbo v0, "android.app.role.ASSISTANT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "FILTER 11"

    const-string/jumbo v2, "MARs:DefaultAppFilter"

    const-string v3, "FILTER 11 removed"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$RoleObserver;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    :goto_0
    if-eqz v5, :cond_4

    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAssistantPackage:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAssistantPackage:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAssistantPackage:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "default Assistant Package: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAssistantPackage:Ljava/lang/String;

    invoke-static {p1, p2, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAssistantPackage:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v0, "android.app.role.WALLET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$RoleObserver;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    move-object p1, v5

    goto :goto_1

    :cond_2
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_1
    if-nez p1, :cond_3

    iput-object v5, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultWalletPackage:Ljava/lang/String;

    :cond_3
    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultWalletPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultWalletPackage:Ljava/lang/String;

    invoke-static {v3, p2}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultWalletPackage:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "default Wallet Package: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultWalletPackage:Ljava/lang/String;

    invoke-static {p1, p2, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultWalletPackage:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

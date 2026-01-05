.class public final Lcom/android/server/pm/AsecInstallHelper$1;
.super Landroid/content/pm/PackageManager$MoveCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/AsecInstallHelper;

.field public final synthetic val$pm:Landroid/content/pm/PackageManager;

.field public final synthetic val$request:Lcom/android/server/pm/InstallRequest;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AsecInstallHelper;Landroid/content/pm/PackageManager;Lcom/android/server/pm/InstallRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$1;->this$0:Lcom/android/server/pm/AsecInstallHelper;

    iput-object p2, p0, Lcom/android/server/pm/AsecInstallHelper$1;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/server/pm/AsecInstallHelper$1;->val$request:Lcom/android/server/pm/InstallRequest;

    invoke-direct {p0}, Landroid/content/pm/PackageManager$MoveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStatusChanged(IIJ)V
    .locals 0

    if-lez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->unregisterMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;)V

    iget-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$1;->this$0:Lcom/android/server/pm/AsecInstallHelper;

    iget-object p1, p1, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/AsecInstallHelper$1;->val$request:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {p1, p0}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    return-void
.end method

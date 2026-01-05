.class public final Lcom/android/server/pm/PackageInstallerSession$6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/android/server/pm/PackageManagerException;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->handleDependencyResolutionFailure(Lcom/android/server/pm/PackageManagerException;)V

    return-void
.end method

.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->install()Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

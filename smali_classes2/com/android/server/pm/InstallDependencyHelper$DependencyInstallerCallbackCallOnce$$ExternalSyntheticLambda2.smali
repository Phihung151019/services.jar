.class public final synthetic Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;

    iput p2, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;

    iget p0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda2;->f$1:I

    iget-object v0, v0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/InstallDependencyHelper;->notifySessionComplete(I)V

    return-void
.end method

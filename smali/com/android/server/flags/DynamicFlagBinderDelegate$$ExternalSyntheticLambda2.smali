.class public final synthetic Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/flags/SyncableFlag;


# direct methods
.method public synthetic constructor <init>(Landroid/flags/SyncableFlag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda2;->f$0:Landroid/flags/SyncableFlag;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda2;->f$0:Landroid/flags/SyncableFlag;

    check-cast p1, Landroid/flags/IFeatureFlagsCallback;

    :try_start_0
    invoke-interface {p1, p0}, Landroid/flags/IFeatureFlagsCallback;->onFlagChange(Landroid/flags/SyncableFlag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "FeatureFlagsService"

    const-string p1, "Failed to communicate flag change to client."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

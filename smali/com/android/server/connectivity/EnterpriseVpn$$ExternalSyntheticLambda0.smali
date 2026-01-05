.class public final synthetic Lcom/android/server/connectivity/EnterpriseVpn$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/connectivity/EnterpriseVpn;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/connectivity/EnterpriseVpn;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Lcom/android/server/connectivity/EnterpriseVpn$1;

    invoke-virtual {v0}, Landroid/net/NetworkAgent;->register()Landroid/net/Network;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Lcom/android/server/connectivity/EnterpriseVpn$1;

    throw v0
.end method

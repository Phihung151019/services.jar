.class public final synthetic Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/net/module/util/BinderUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/connectivity/Vpn;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/connectivity/Vpn;

    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda0;->f$2:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda0;->f$2:Ljava/util/Set;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->setVpnDefaultForUids(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.class public final synthetic Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/net/module/util/BinderUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/connectivity/Vpn;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/connectivity/Vpn;

    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/connectivity/Vpn;

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, p0, v1}, Landroid/net/ConnectivityManager;->setVpnDefaultForUids(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

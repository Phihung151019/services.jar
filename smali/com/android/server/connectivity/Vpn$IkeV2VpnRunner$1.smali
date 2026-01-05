.class public final Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    return-void
.end method


# virtual methods
.method public final onCarrierConfigChanged(IIII)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    const-string/jumbo v1, "[CarrierConfig] Changed on slot "

    const-string v2, " subId="

    const-string v3, " carrerId="

    invoke-static {p1, p2, v1, v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " specificCarrierId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    iget-object p1, p1, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter p1

    :try_start_0
    iget-object p3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    iget-object p3, p3, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object p3, p3, Lcom/android/server/connectivity/Vpn;->mCachedCarrierConfigInfoPerSubId:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->remove(I)V

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object p2, p2, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    if-eq p2, p0, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->maybeMigrateIkeSessionAndUpdateVpnTransportInfo(Landroid/net/Network;)Z

    monitor-exit p1

    return-void

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

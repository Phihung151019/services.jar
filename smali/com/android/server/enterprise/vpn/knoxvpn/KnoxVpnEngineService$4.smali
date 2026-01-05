.class public final Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

.field public final synthetic val$exemptedUidList:Ljava/util/HashSet;

.field public final synthetic val$profileName:Ljava/lang/String;

.field public final synthetic val$profileProxyInfo:Landroid/net/ProxyInfo;

.field public final synthetic val$uidList:Ljava/util/HashMap;

.field public final synthetic val$vendorUid:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;Ljava/util/HashMap;ILandroid/net/ProxyInfo;Ljava/util/HashSet;I)V
    .locals 0

    iput p7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$profileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$uidList:Ljava/util/HashMap;

    iput p4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$vendorUid:I

    iput-object p5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$profileProxyInfo:Landroid/net/ProxyInfo;

    iput-object p6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$exemptedUidList:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "The pac configuration is being removed for the application added to vpn, update AMS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$profileName:Ljava/lang/String;

    const-string v2, "KnoxVpnEngineService"

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getAMSInstance()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$uidList:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$vendorUid:I

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$profileProxyInfo:Landroid/net/ProxyInfo;

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$exemptedUidList:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateProxyPacConfigurationForKnoxVpn(Ljava/util/HashMap;ILandroid/net/ProxyInfo;Ljava/util/HashSet;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "The pac configuration is being removed for the application added to vpn, send default broadcast "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$profileName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$uidList:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$vendorUid:I

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$exemptedUidList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->sendProxyConfigBroadcast(ILjava/util/HashMap;Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$profileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$uidList:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$exemptedUidList:Ljava/util/HashSet;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-$$Nest$mkillRunningProcessToApplyProxy(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;)V

    return-void

    :pswitch_0
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mIsCaptiveExempt:Z

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getAMSInstance()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$uidList:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$vendorUid:I

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$profileProxyInfo:Landroid/net/ProxyInfo;

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$exemptedUidList:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateProxyPacConfigurationForKnoxVpn(Ljava/util/HashMap;ILandroid/net/ProxyInfo;Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$uidList:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$vendorUid:I

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$exemptedUidList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->sendProxyConfigBroadcast(ILjava/util/HashMap;Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$profileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$uidList:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;->val$exemptedUidList:Ljava/util/HashSet;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-$$Nest$mkillRunningProcessToApplyProxy(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

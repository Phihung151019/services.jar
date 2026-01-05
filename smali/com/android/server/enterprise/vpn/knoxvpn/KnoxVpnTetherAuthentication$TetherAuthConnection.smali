.class public final Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onBindingDied is reached for user "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    const-string v1, "KnoxVpnTetherAuthentication"

    invoke-static {p1, v0, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object p1, p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mknoxVpnTetherAuthClientStatus:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onBindingDied callback has been recieved for tetherAuth client in user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and for profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " at "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string p1, "Error happened during remote process communication with the application "

    const-string v0, "KnoxVpnTetherAuthentication"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onServiceConnected is reached for user "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {v1, v2, v0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mknoxVpnTetherAuthClientStatus:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onServiceConnected callback has been recieved for tetherAuth client in user "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and for profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mProfileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    move-result-object p2

    iput-object p2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object v1, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    iget-object p2, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    const-string/jumbo v2, "key-tether-auth-login-page"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setHtmlSignInPage(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object v1, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    iget-object p2, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    const-string/jumbo v2, "key-tether-auth-response-page"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setHtmlResponsePage(Ljava/lang/String;)V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "key-tether-client-certificate-issuer-cn"

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    const-string/jumbo v3, "key-tether-client-certificate-issuer-cn"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "key-tether-client-certificate-issued-cn"

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    const-string/jumbo v3, "key-tether-client-certificate-issued-cn"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    invoke-interface {v1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setClientAuthDetails(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object v1, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object p2, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mProfileName:Ljava/lang/String;

    const-string/jumbo v2, "captivecert_pwd"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->retrieveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    iget-object v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    const-string/jumbo v3, "key-tether-captive-portal-alias"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setCaptivePortalAlias(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    iget-object v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    const-string/jumbo v3, "key-tether-captive-portal-certificate"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v2, v1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setCaptivePortalCertificate([BLjava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object v1, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object p2, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mProfileName:Ljava/lang/String;

    const-string/jumbo v2, "cacert_pwd"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->retrieveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    iget-object v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    const-string/jumbo v3, "key-tether-ca-alias"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setCaAlias(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    iget-object v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    const-string/jumbo v3, "key-tether-ca-certificate"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v2, v1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setCACertificate([BLjava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object v1, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object p2, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mProfileName:Ljava/lang/String;

    const-string/jumbo v2, "servercert_pwd"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->retrieveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    iget-object v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    const-string/jumbo v3, "key-tether-user-alias"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setServerAlias(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    iget-object v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    const-string/jumbo v3, "key-tether-user-certificate"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v2, v1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setServerCertificate([BLjava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-boolean p2, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->isTetherAuthSuccessful:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object v1, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    iget-object p2, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mProfileName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInterfaceNameForUsbtethering()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceName:Ljava/lang/String;

    iget v3, p2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->activateState:I

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne v3, v2, :cond_0

    const-string v2, "KnoxVpnTetherAuthentication"

    const-string/jumbo v3, "start tether auth process after onServiceConnected event"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getIpAddressForUsbTetheringInterface()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget p2, p2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->personaId:I

    invoke-virtual {v3, p2, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->startTetherAuthProcess(ILjava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_2
    const-string v1, "KnoxVpnTetherAuthentication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onServicedisconnected is reached for user "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    const-string v1, "KnoxVpnTetherAuthentication"

    invoke-static {p1, v0, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object p1, p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mknoxVpnTetherAuthClientStatus:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onServiceDisconnected callback has been recieved for tetherAuth client in user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and for profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    iget-object v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    return-void
.end method

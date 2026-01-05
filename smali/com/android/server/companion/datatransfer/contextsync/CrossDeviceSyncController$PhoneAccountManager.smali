.class public final Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mConnectionServiceComponentName:Landroid/content/ComponentName;

.field public final mPhoneAccountHandles:Ljava/util/Map;

.field public final mTelecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mPhoneAccountHandles:Ljava/util/Map;

    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mConnectionServiceComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public static createPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/telecom/PhoneAccount;
    .locals 2

    const-string/jumbo v0, "com.android.server.companion.datatransfer.contextsync.extra.CALL_FACILITATOR_ID"

    const-string/jumbo v1, "com.android.server.companion.datatransfer.contextsync.extra.ASSOCIATION_ID"

    invoke-static {p3, v0, p2, v1}, Lcom/android/server/am/FreecessHandler$MainHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    new-instance p3, Landroid/telecom/PhoneAccount$Builder;

    invoke-direct {p3, p0, p1}, Landroid/telecom/PhoneAccount$Builder;-><init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V

    invoke-virtual {p3, p2}, Landroid/telecom/PhoneAccount$Builder;->setExtras(Landroid/os/Bundle;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object p0

    if-eqz p4, :cond_0

    const-string/jumbo p1, "tel"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "sip"

    :goto_0
    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telecom/PhoneAccount$Builder;->setSupportedUriSchemes(Ljava/util/List;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/telecom/PhoneAccount$Builder;->setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telecom/PhoneAccount$Builder;->build()Landroid/telecom/PhoneAccount;

    move-result-object p0

    return-object p0
.end method

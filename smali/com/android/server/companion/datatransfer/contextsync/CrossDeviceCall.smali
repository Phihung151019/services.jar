.class public final Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCall:Landroid/telecom/Call;

.field public mCallerDisplayName:Ljava/lang/String;

.field public mCallerDisplayNamePresentation:I

.field public final mCallingAppIcon:[B

.field public final mCallingAppName:Ljava/lang/String;

.field public final mCallingAppPackageName:Ljava/lang/String;

.field public mContactDisplayName:Ljava/lang/String;

.field public final mControls:Ljava/util/Set;

.field public mDirection:I

.field public mHandle:Landroid/net/Uri;

.field public mHandlePresentation:I

.field public final mId:Ljava/lang/String;

.field public final mIsCallPlacedByContextSync:Z

.field mIsEnterprise:Z

.field public final mIsMuted:Z

.field public final mSerializedPhoneAccountHandle:Ljava/lang/String;

.field public mStatus:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telecom/Call;Landroid/telecom/CallAudioState;)V
    .locals 8

    invoke-virtual {p2}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "com.android.companion.datatransfer.contextsync.extra.CALL_ID"

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "::"

    if-eqz v2, :cond_1

    invoke-static {v4, v5, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    iput-object v4, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mId:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Landroid/telecom/Call;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    :goto_1
    iput v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mUserId:I

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    new-instance v4, Landroid/content/ComponentName;

    const-class v6, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;

    invoke-direct {v4, p1, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    iput-boolean v4, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mIsCallPlacedByContextSync:Z

    const-string v4, ""

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_4
    move-object v6, v4

    :goto_3
    iput-object v6, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallingAppPackageName:Ljava/lang/String;

    if-eqz p2, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_5
    iput-object v4, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mSerializedPhoneAccountHandle:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCallProperties()I

    move-result p2

    const/16 v4, 0x20

    and-int/2addr p2, v4

    if-ne p2, v4, :cond_6

    move p2, v3

    goto :goto_4

    :cond_6
    move p2, v1

    :goto_4
    iput-boolean p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mIsEnterprise:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-wide/16 v4, 0x0

    :try_start_0
    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object p2

    invoke-virtual {p1, v6, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallingAppName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/companion/datatransfer/contextsync/BitmapUtils;->renderDrawableToByteArray(Landroid/graphics/drawable/Drawable;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallingAppIcon:[B
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Could not get application info for package "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallingAppPackageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "CrossDeviceCall"

    invoke-static {v2, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result p1

    if-eqz p1, :cond_7

    move v1, v3

    :cond_7
    iput-boolean v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mIsMuted:Z

    invoke-virtual {p0, v0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->updateCallDetails(Landroid/telecom/Call$Details;)V

    return-void
.end method


# virtual methods
.method public final getNonContactString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallerDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallerDisplayNamePresentation:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallerDisplayName:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mHandle:Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mHandlePresentation:I

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mHandle:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public updateCallDetails(Landroid/telecom/Call$Details;)V
    .locals 12

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallerDisplayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getCallerDisplayNamePresentation()I

    move-result v0

    iput v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallerDisplayNamePresentation:I

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getContactDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mContactDisplayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mHandle:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getHandlePresentation()I

    move-result v0

    iput v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mHandlePresentation:I

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getCallDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iput v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mDirection:I

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    iput v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mDirection:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mDirection:I

    :goto_0
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getState()I

    move-result v0

    const/4 v4, 0x5

    const/4 v5, 0x7

    const/16 v6, 0x8

    const/4 v7, 0x6

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eq v0, v3, :cond_8

    if-eq v0, v2, :cond_7

    if-eq v0, v9, :cond_6

    if-eq v0, v8, :cond_5

    if-eq v0, v5, :cond_4

    const/16 v10, 0xc

    if-eq v0, v10, :cond_3

    const/16 v10, 0xd

    if-eq v0, v10, :cond_2

    const-string v10, "Couldn\'t resolve state to status: "

    const-string v11, "CrossDeviceCall"

    invoke-static {v0, v10, v11}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v1, v7

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_1

    :cond_4
    move v1, v5

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    move v1, v9

    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_1

    :cond_8
    move v1, v6

    :goto_1
    iput v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    if-ne v0, v6, :cond_9

    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    if-eq v0, v3, :cond_a

    if-ne v0, v8, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    if-eq v0, v2, :cond_c

    if-ne v0, v9, :cond_e

    :cond_c
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v3}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    iget v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    if-ne v1, v9, :cond_d

    move v5, v6

    :cond_d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    if-ne v0, v2, :cond_10

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Landroid/telecom/Call$Details;->can(I)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    iget-boolean p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mIsMuted:Z

    if-eqz p0, :cond_f

    goto :goto_2

    :cond_f
    move v4, v8

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

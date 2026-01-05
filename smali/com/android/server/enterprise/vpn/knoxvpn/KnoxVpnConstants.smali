.class public abstract Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final AID_EXEMPT_LIST:[Ljava/lang/Integer;

.field public static final APPS_TO_RESTART_PROXY:[Ljava/lang/String;

.field public static final BLACK_LISTED_APPLICATION:[Ljava/lang/String;

.field public static final EMAIL_PACKAGE_LIST:[Ljava/lang/String;

.field public static final USB_TETHERING_IFACE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string/jumbo v0, "com.android.providers.downloads"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLACK_LISTED_APPLICATION:[Ljava/lang/String;

    const-string/jumbo v0, "com.android.chrome"

    const-string/jumbo v1, "com.sec.android.app.sbrowser"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->APPS_TO_RESTART_PROXY:[Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.email.sync"

    const-string/jumbo v1, "com.samsung.android.email.ui"

    const-string/jumbo v2, "com.samsung.android.email.provider"

    const-string/jumbo v3, "com.samsung.android.email.widget"

    const-string/jumbo v4, "com.samsung.android.email.composer"

    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->EMAIL_PACKAGE_LIST:[Ljava/lang/String;

    const/16 v0, 0x41b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x405

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x41c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->AID_EXEMPT_LIST:[Ljava/lang/Integer;

    const-string/jumbo v0, "rndis"

    const-string/jumbo v1, "usb"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->USB_TETHERING_IFACE:[Ljava/lang/String;

    return-void
.end method

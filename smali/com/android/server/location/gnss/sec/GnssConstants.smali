.class public abstract Lcom/android/server/location/gnss/sec/GnssConstants;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final EXTRA_COMMAND_APPROVED_APPS:[Ljava/lang/String;

.field public static final NAVIGATION_APP_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string/jumbo v17, "com.slbd.nmea2log"

    const-string/jumbo v18, "com.gnssdemo"

    const-string/jumbo v1, "com.android.angryGps"

    const-string/jumbo v2, "com.android.cts.verifier"

    const-string/jumbo v3, "android.location.cts"

    const-string/jumbo v4, "android.location.cts.gnss"

    const-string/jumbo v5, "android.location.cts.fine"

    const-string/jumbo v6, "android.location.cts.coarse"

    const-string/jumbo v7, "com.android.shell"

    const-string/jumbo v8, "android.seclocation.cts"

    const-string/jumbo v9, "android.seclonglocation.cts"

    const-string/jumbo v10, "com.google.android.location.gts"

    const-string/jumbo v11, "com.starriver.gnsstester"

    const-string/jumbo v12, "com.kt.serviceagent"

    const-string/jumbo v13, "com.kaf.apitest"

    const-string/jumbo v14, "com.kt.oladc"

    const-string/jumbo v15, "com.rohdeschwarz.e112advanced"

    const-string/jumbo v16, "com.cetecom.e112"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/gnss/sec/GnssConstants;->EXTRA_COMMAND_APPROVED_APPS:[Ljava/lang/String;

    const-string/jumbo v0, "Y29tLnRlbmNlbnQubWFw"

    const-string/jumbo v1, "Y29tLmJhaWR1LmNhcmxpZmU="

    const-string/jumbo v2, "Y29tLmF1dG9uYXZpLm1pbmltYXA="

    const-string/jumbo v3, "Y29tLmJhaWR1LkJhaWR1TWFw"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/gnss/sec/GnssConstants;->NAVIGATION_APP_LIST:[Ljava/lang/String;

    return-void
.end method

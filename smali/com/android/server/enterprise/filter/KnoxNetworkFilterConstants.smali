.class public abstract Lcom/android/server/enterprise/filter/KnoxNetworkFilterConstants;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final NW_FILTER_EXEMPT_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "com.samsung.android.knox.app.networkfilter"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterConstants;->NW_FILTER_EXEMPT_LIST:[Ljava/lang/String;

    return-void
.end method

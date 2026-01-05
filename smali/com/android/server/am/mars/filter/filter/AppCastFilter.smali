.class public final Lcom/android/server/am/mars/filter/filter/AppCastFilter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# static fields
.field public static final URI_APP_CAST_ENABLED:Landroid/net/Uri;

.field public static final URI_APP_CAST_PACKAGE:Landroid/net/Uri;


# instance fields
.field public mAppCastEnabledObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

.field public mAppCastPackage:Ljava/lang/String;

.field public mAppCastPackageObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

.field public mContext:Landroid/content/Context;

.field public mIsAppCastEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.samsung.android.smartmirroring/app_cast_sent_result"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->URI_APP_CAST_ENABLED:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.smartmirroring/app_cast_sent_top_package"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->URI_APP_CAST_PACKAGE:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final deInit()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastEnabledObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastEnabledObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastEnabledObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackageObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackageObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackageObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    :cond_1
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    iget-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mIsAppCastEnabled:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackage:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x18

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastEnabledObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/AppCastFilter;Landroid/os/Handler;I)V

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastEnabledObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->URI_APP_CAST_ENABLED:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastEnabledObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackageObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    if-nez p1, :cond_1

    new-instance p1, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x1

    invoke-direct {p1, p0, v1, v2}, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/AppCastFilter;Landroid/os/Handler;I)V

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackageObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->URI_APP_CAST_PACKAGE:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackageObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    invoke-virtual {p1, v1, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

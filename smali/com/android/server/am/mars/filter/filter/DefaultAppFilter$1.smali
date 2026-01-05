.class public final Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "onChange - DEFAULT_INPUT_METHOD!"

    const-string/jumbo p2, "MARs:DefaultAppFilter"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    iget-object p2, p1, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getDefaultIMEPackage(I)V

    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    iget-object p1, p1, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    iget-boolean p2, p1, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mSecureFolderEnabled:Z

    if-eqz p2, :cond_1

    iget p2, p1, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mSecureFolderUserId:I

    const/16 v0, 0x96

    if-lt p2, v0, :cond_1

    const/16 v0, 0xa0

    if-gt p2, v0, :cond_1

    invoke-virtual {p1, p2}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getDefaultIMEPackage(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getSubUserIdsDefaultIMEPackage()V

    return-void
.end method

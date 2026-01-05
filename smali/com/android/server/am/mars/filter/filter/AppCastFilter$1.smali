.class public final Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/AppCastFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/AppCastFilter;Landroid/os/Handler;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    sget-object p1, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->URI_APP_CAST_PACKAGE:Landroid/net/Uri;

    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackage:Ljava/lang/String;

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    sget-object p2, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->URI_APP_CAST_ENABLED:Landroid/net/Uri;

    iget-object p1, p1, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mIsAppCastEnabled:Z

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

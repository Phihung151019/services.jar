.class public final Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/mars/database/MARsDBManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/mars/database/MARsDBManager;Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget v0, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/MARsDBManager;->getSettingsValueFromDB(Z)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->getFreezeExcludeListFromDB()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->getDefaultAllowedListDBValues()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 1

    iget v0, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    return-void

    :pswitch_0
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "MARs-self"

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBHandler:Lcom/android/server/am/mars/database/MARsDBHandler;

    iget-object p1, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mFASDBupdateRunnable:Lcom/android/server/am/mars/database/MARsDBHandler$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

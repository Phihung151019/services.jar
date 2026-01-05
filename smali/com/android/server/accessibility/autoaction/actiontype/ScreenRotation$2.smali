.class public final Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$2;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$2;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;

    iget-object p1, p1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$2;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;

    iget-object v0, p2, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mAccelerometerRotationUri:Ljava/lang/String;

    iget p2, p2, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mUserId:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$2;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;

    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->rotateScreen()V

    return-void
.end method

.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;

    return-void
.end method


# virtual methods
.method public final onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->run()V

    return-void
.end method

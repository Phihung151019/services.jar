.class public final synthetic Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;

    iget-object v0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;->mTelephonyManagerForSubId:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

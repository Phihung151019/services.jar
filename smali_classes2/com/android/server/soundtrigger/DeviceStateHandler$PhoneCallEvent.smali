.class public final Lcom/android/server/soundtrigger/DeviceStateHandler$PhoneCallEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mIsInPhoneCall:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$PhoneCallEvent;->mIsInPhoneCall:Z

    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PhoneCallChange - inPhoneCall: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$PhoneCallEvent;->mIsInPhoneCall:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

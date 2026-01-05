.class public final Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final bedTimeMillis:J

.field public final confidence:F

.field public final isConfident:Z

.field public final wakeupTimeMillis:J

.field public final weekType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->weekType:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->bedTimeMillis:J

    iput-wide p4, p0, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->wakeupTimeMillis:J

    iput p6, p0, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->confidence:F

    iput-boolean p7, p0, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->isConfident:Z

    return-void
.end method

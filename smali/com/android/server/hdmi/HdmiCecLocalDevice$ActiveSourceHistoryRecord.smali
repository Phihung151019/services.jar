.class public final Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;
.super Lcom/android/server/hdmi/HdmiCecController$Dumpable;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

.field public final mCaller:Ljava/lang/String;

.field public final mIsActiveSource:Z


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController$Dumpable;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    iput-boolean p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;->mIsActiveSource:Z

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;->mCaller:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V
    .locals 3

    const-string/jumbo v0, "time="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController$Dumpable;->mTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " active source="

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const-string p2, " isActiveSource="

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;->mIsActiveSource:Z

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    const-string p2, " from="

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;->mCaller:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

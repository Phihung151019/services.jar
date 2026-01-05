.class public final Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final parameterValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;

.field public final validDestinations:I

.field public final validSources:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->parameterValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->validSources:I

    iput p3, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->validDestinations:I

    return-void
.end method

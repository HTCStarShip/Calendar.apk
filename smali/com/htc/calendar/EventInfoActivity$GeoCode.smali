.class Lcom/htc/calendar/EventInfoActivity$GeoCode;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EventInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GeoCode"
.end annotation


# instance fields
.field lat:Ljava/lang/Double;

.field lon:Ljava/lang/Double;

.field final synthetic this$0:Lcom/htc/calendar/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/EventInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1732
    iput-object p1, p0, Lcom/htc/calendar/EventInfoActivity$GeoCode;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

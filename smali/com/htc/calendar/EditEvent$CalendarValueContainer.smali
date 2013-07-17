.class Lcom/htc/calendar/EditEvent$CalendarValueContainer;
.super Ljava/lang/Object;
.source "EditEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarValueContainer"
.end annotation


# instance fields
.field public calendar_id:J

.field public reminder_duration:I

.field public reminder_type:I

.field public sync_account:Ljava/lang/String;

.field public sync_account_type:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/calendar/EditEvent;


# direct methods
.method private constructor <init>(Lcom/htc/calendar/EditEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 4023
    iput-object p1, p0, Lcom/htc/calendar/EditEvent$CalendarValueContainer;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/calendar/EditEvent;Lcom/htc/calendar/EditEvent$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4023
    invoke-direct {p0, p1}, Lcom/htc/calendar/EditEvent$CalendarValueContainer;-><init>(Lcom/htc/calendar/EditEvent;)V

    return-void
.end method

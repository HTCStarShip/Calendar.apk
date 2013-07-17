.class public Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;
.super Ljava/lang/Object;
.source "CalendarPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CalendarPreference"
.end annotation


# instance fields
.field public lCalendarId:J

.field public nHideDeclined:I

.field public nReminderDuration:I

.field public nReminderType:I

.field public strAlertRingtone:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/calendar/CalendarPreferenceActivity;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/CalendarPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

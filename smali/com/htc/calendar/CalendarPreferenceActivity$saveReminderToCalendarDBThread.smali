.class Lcom/htc/calendar/CalendarPreferenceActivity$saveReminderToCalendarDBThread;
.super Ljava/lang/Thread;
.source "CalendarPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "saveReminderToCalendarDBThread"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mReminderValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter "reminderValue"
    .parameter "context"

    .prologue
    .line 732
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 733
    iput-object p1, p0, Lcom/htc/calendar/CalendarPreferenceActivity$saveReminderToCalendarDBThread;->mReminderValue:Ljava/lang/String;

    .line 734
    iput-object p2, p0, Lcom/htc/calendar/CalendarPreferenceActivity$saveReminderToCalendarDBThread;->mContext:Landroid/content/Context;

    .line 735
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity$saveReminderToCalendarDBThread;->mReminderValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/calendar/CalendarPreferenceActivity$saveReminderToCalendarDBThread;->mContext:Landroid/content/Context;

    #calls: Lcom/htc/calendar/CalendarPreferenceActivity;->saveReminderToCalendarDBLocked(Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$200(Ljava/lang/String;Landroid/content/Context;)V

    .line 740
    return-void
.end method

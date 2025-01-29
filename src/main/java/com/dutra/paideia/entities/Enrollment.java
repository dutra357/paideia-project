package com.dutra.paideia.entities;

import com.dutra.paideia.entities.pk.EnrollmentPK;
import jakarta.persistence.*;

import java.time.Instant;
import java.util.*;

@Entity
@Table(name = "tb_enrollment")
public class Enrollment {
    @EmbeddedId
    private final EnrollmentPK id = new EnrollmentPK();
    @Column(columnDefinition = "TIMESTAMP WITH TIME ZONE")
    private Instant enrollMoment;
    @Column(columnDefinition = "TIMESTAMP WITH TIME ZONE")
    private Instant refundMoment;
    private boolean available;
    private boolean onlyAvailable;
    @ManyToMany(mappedBy = "enrollmentsDone")
    private final Set<Lesson> lessonsDone = new HashSet<>();
    @OneToMany(mappedBy = "enrollment")
    private final List<Deliver> deliveries = new ArrayList<>();

    public Enrollment() {}
    public Enrollment(User user, Offer offer,
                      Instant enrollMoment, Instant refundMoment,
                      boolean available, boolean onlyAvailable) {
        this.enrollMoment = enrollMoment;
        this.refundMoment = refundMoment;
        this.available = available;
        this.onlyAvailable = onlyAvailable;
        id.setUser(user);
        id.setOffer(offer);
    }

    public User getStudent() {
        return id.getUser();
    }

    public void setStudent(User user) {
        id.setUser(user);
    }

    public Offer getOffer() {
        return id.getOffer();
    }

    public void setOffer(Offer offer) {
        id.setOffer(offer);
    }

    public Instant getEnrollMoment() {
        return enrollMoment;
    }

    public void setEnrollMoment(Instant enrollMoment) {
        this.enrollMoment = enrollMoment;
    }

    public Instant getRefundMoment() {
        return refundMoment;
    }

    public void setRefundMoment(Instant refundMoment) {
        this.refundMoment = refundMoment;
    }

    public boolean isAvailable() {
        return available;
    }

    public void setAvailable(boolean available) {
        this.available = available;
    }

    public boolean isOnlyAvailable() {
        return onlyAvailable;
    }

    public void setOnlyAvailable(boolean onlyAvailable) {
        this.onlyAvailable = onlyAvailable;
    }

    public EnrollmentPK getId() {
        return id;
    }

    public Set<Lesson> getLessonsDone() {
        return lessonsDone;
    }

    public List<Deliver> getDeliveries() {
        return deliveries;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Enrollment that = (Enrollment) o;
        return Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }


}

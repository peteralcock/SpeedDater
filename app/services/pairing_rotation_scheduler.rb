# This service takes a sprint, an array of developers, and an array of PTO requests as input. It generates a pairing rotation schedule by looping through each day of the sprint, checking for PTO requests, pairing the available developers, and then rotating the developers for the next day. The schedule is an array of hashes, with each hash containing the day, the pairs of developers, and the developers on PTO.

class PairingRotationScheduler
  def initialize(sprint, developers, pto_requests)
    @sprint = sprint
    @developers = developers
    @pto_requests = pto_requests
    @schedule = []
  end

  def generate
    # Create a copy of the developers array to manipulate
    devs = @developers.dup

    # Loop through each day of the sprint
    @sprint.number.times do |day|
      # Check for PTO requests
      devs_on_pto = @pto_requests.select { |pto| pto.start_date <= day && pto.end_date >= day }.map(&:developer)

      # Remove developers on PTO from the available developers
      available_devs = devs - devs_on_pto

      # Pair the developers
      pairs = pair_developers(available_devs)

      # Add the pairs to the schedule
      @schedule << { day: day, pairs: pairs, pto: devs_on_pto }

      # Rotate the developers for the next day
      devs.rotate!
    end

    @schedule
  end

  private

  def pair_developers(developers)
    # Pair the developers by taking them two at a time
    developers.each_slice(2).to_a
  end
end
